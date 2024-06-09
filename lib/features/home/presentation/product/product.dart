import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/dependency_injection/injectable.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_styles.dart';
import '../../../../core/utils/media_provider.dart';
import '../../domain/entities/cart_item.dart';
import '../core/cart_bloc/cart_bloc.dart';
import '../core/widgets/cart_button.dart';
import '../core/widgets/custom_error.dart';
import '../core/widgets/loading.dart';
import '../core/widgets/quantity.dart';
import '../core/widgets/checkout.dart';
import '../customer/customer.dart';
import 'bloc/products_bloc.dart';

part 'widgets/product.dart';
part 'widgets/grid_section.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  static const path = '/product';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ProductsBloc>(param1: context.read<CartBloc>())
        ..add(const ProductsEvent.getProducts()),
      child: const _ProductScreen(),
    );
  }
}

class _ProductScreen extends StatelessWidget {
  const _ProductScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bg,
      appBar: AppBar(
        backgroundColor: AppColors.bg,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back),
        ),
        centerTitle: true,
        title: const Text(
          'Products',
          style: TextStyle(color: AppColors.darkGreen),
        ),
        actions: const [
          CartButtonWidget(),
        ],
      ),
      body: SafeArea(
        top: false,
        bottom: false,
        child: BlocBuilder<ProductsBloc, ProductsState>(
          builder: (context, state) {
            if (state is ProductsStateLoading) {
              return const LoadingWidget();
            }

            if (state is ProductsStateError) {
              return const CustomErrorWidget();
            }

            return Stack(
              alignment: Alignment.bottomCenter,
              children: [
                _GridSection((state as ProductsStateLoaded).products),
                Padding(
                  padding: const EdgeInsets.only(bottom: 60),
                  child: CheckoutWidget(
                    onTap: () => context.go(CustomerScreen.path),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
