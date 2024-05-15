import 'dart:async';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../commen_widgets/responsive_view.dart';
import '../../../../core/dependency_injection/injectable.dart';
import '../../../../core/utils/app_assets.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_styles.dart';
import '../../../../core/utils/media_provider.dart';
import '../../domain/entities/customer.dart';
import '../checkout/checkout.dart';
import '../core/widgets/custom_error.dart';
import '../core/widgets/loading.dart';
import 'bloc/customers_bloc.dart';

part 'widgets/customer.dart';

class CustomerScreen extends StatelessWidget {
  const CustomerScreen({super.key});

  static const path = '/customer';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt<CustomersBloc>()..add(const CustomersEvent.getCustomers()),
      child: const _CustomerScreen(),
    );
  }
}

class _CustomerScreen extends StatefulWidget {
  const _CustomerScreen();

  @override
  State<_CustomerScreen> createState() => _CustomerScreenState();
}

class _CustomerScreenState extends State<_CustomerScreen> {
  Timer? _debounce;

  @override
  void dispose() {
    _debounce?.cancel();
    super.dispose();
  }

  /// Search customers with debounce
  void _onSearch(String value) {
    if (_debounce?.isActive ?? false) _debounce!.cancel();

    _debounce = Timer(
      const Duration(milliseconds: 800),
      () => context
          .read<CustomersBloc>()
          .add(CustomersEvent.getCustomers(name: value)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        backgroundColor: AppColors.white,
        title: const Text('Customers'),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back_ios),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Image.asset(
              AppAssets.menu,
              height: 50,
              width: 50,
            ),
          ),
        ],
        bottom: PreferredSize(
          preferredSize: const Size(double.infinity, 50),
          child: SizedBox(
            height: 45,
            child: Padding(
              padding: AppStyles.hPadding10,
              child: SearchBar(
                onChanged: _onSearch,
                hintText: 'Search',
                hintStyle: const MaterialStatePropertyAll(
                  TextStyle(
                    color: AppColors.grey,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                elevation: const MaterialStatePropertyAll(0),
                side: const MaterialStatePropertyAll(
                  BorderSide(
                    color: AppColors.grey,
                  ),
                ),
                leading: const Icon(
                  CupertinoIcons.search,
                  color: AppColors.grey,
                  size: 20,
                ),
                trailing: const [
                  Icon(
                    Icons.qr_code,
                    color: AppColors.grey,
                    size: 30,
                  ),
                  Icon(
                    CupertinoIcons.add_circled_solid,
                    color: AppColors.blue,
                    size: 30,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      body: SafeArea(
        top: false,
        bottom: false,
        child: BlocBuilder<CustomersBloc, CustomersState>(
          builder: (context, state) {
            if (state is CustomersStateLoading) {
              return const LoadingWidget();
            }

            if (state is CustomersStateError) {
              return const CustomErrorWidget();
            }

            if ((state as CustomersStateLoaded).customers.isNotEmpty) {
              return ResponsiveView(
                phoneView: ListView.separated(
                  physics: const BouncingScrollPhysics(),
                  padding: const EdgeInsets.only(
                    left: 10,
                    right: 10,
                    top: 10,
                    bottom: 80,
                  ),
                  itemBuilder: (context, index) =>
                      _CustomerWidget(state.customers[index]),
                  separatorBuilder: (_, __) => AppStyles.height10,
                  itemCount: state.customers.length,
                ),
                tabletView: ListView.separated(
                  physics: const BouncingScrollPhysics(),
                  padding: const EdgeInsets.only(
                    left: 30,
                    right: 30,
                    top: 30,
                    bottom: 80,
                  ),
                  itemBuilder: (context, index) =>
                      _CustomerWidget(state.customers[index]),
                  separatorBuilder: (_, __) => AppStyles.height10,
                  itemCount: state.customers.length,
                ),
              );
            } else {
              return const Center(
                child: Text('Sorry, no customers found!'),
              );
            }
          },
        ),
      ),
    );
  }
}
