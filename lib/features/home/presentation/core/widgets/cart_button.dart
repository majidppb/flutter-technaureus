import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/utils/app_colors.dart';
import '../cart_bloc/cart_bloc.dart';

class CartButtonWidget extends StatelessWidget {
  const CartButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconButton.filled(
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text(
                    "Please use the 'Checkout' button in the Product's page"),
              ),
            );
          },
          style: const ButtonStyle(
            iconSize: MaterialStatePropertyAll(30),
            backgroundColor: MaterialStatePropertyAll(AppColors.white),
          ),
          icon: const Icon(
            CupertinoIcons.cart,
            color: AppColors.green,
          ),
        ),
        Positioned(
          left: 25,
          child: Container(
            width: 21,
            height: 21,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: AppColors.dullRed,
            ),
            alignment: Alignment.center,
            child: BlocSelector<CartBloc, CartState, int>(
              selector: (state) {
                return state.items.length;
              },
              builder: (context, state) {
                return Text(
                  state.toString(),
                  style: const TextStyle(
                    fontSize: 11,
                    color: AppColors.white,
                    fontWeight: FontWeight.bold,
                  ),
                );
              },
            ),
          ),
        )
      ],
    );
  }
}
