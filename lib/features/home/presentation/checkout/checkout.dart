import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_styles.dart';
import '../../../../core/utils/media_provider.dart';
import '../../domain/entities/cart_item.dart';
import '../core/cart_bloc/cart_bloc.dart';
import '../core/widgets/checkout.dart';
import '../core/widgets/custom_error.dart';
import '../core/widgets/loading.dart';
import '../core/widgets/quantity.dart';
import '../home/home.dart';

part 'widgets/cart_item.dart';

class CheckoutScreen extends StatelessWidget {
  static const path = '/checkout';

  final int _customerId;

  const CheckoutScreen({super.key, required int customerId})
      : _customerId = customerId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bg,
      appBar: AppBar(
        backgroundColor: AppColors.bg,
        centerTitle: true,
        title: const Text(
          'My Cart',
          style: TextStyle(
            color: AppColors.darkGreen,
          ),
        ),
      ),
      body: SafeArea(
        top: false,
        child: BlocConsumer<CartBloc, CartState>(
          listener: _onListen,
          buildWhen: (previous, current) {
            return previous.items != current.items ||
                previous.status != current.status;
          },
          builder: (context, state) {
            if (state.status == CartStatus.loading) {
              return const LoadingWidget();
            }

            if (state.status == CartStatus.error) {
              return const CustomErrorWidget();
            }

            if (state.items.isNotEmpty) {
              return Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  ListView.separated(
                    padding: const EdgeInsets.only(
                      right: 15,
                      left: 15,
                      top: 15,
                      bottom: 95,
                    ),
                    itemBuilder: (context, index) =>
                        _CartItemWidget(state.items[index]),
                    separatorBuilder: (_, __) => AppStyles.height10,
                    itemCount: state.items.length,
                  ),
                  CheckoutWidget(
                    onTap: () {
                      context
                          .read<CartBloc>()
                          .add(CartEvent.checkout(customer: _customerId));
                    },
                  ),
                ],
              );
            } else {
              return Center(
                child: Text(
                  'Cart is empty!\nPlease add items.',
                  textAlign: TextAlign.center,
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium!
                      .copyWith(color: AppColors.darkGreen),
                ),
              );
            }
          },
        ),
      ),
    );
  }

  void _onListen(BuildContext context, CartState state) {
    if (state.checkoutStatus != null) {
      if (state.checkoutStatus!) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Successfully created order!'),
            backgroundColor: AppColors.green,
          ),
        );
        context.go(HomeScreen.path);
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Failed to create order!'),
            backgroundColor: AppColors.red,
          ),
        );
      }
    }
  }
}
