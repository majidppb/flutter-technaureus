import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_styles.dart';
import '../cart_bloc/cart_bloc.dart';

class CheckoutWidget extends StatelessWidget {
  const CheckoutWidget({super.key, required void Function() onTap})
      : _onTap = onTap;

  final void Function() _onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
      child: ClipRRect(
        borderRadius: AppStyles.borderRadius24,
        child: BackdropFilter(
          filter: AppStyles.blurFilter,
          child: Container(
            decoration: const BoxDecoration(
              color: AppColors.darkGreenTransparent,
            ),
            width: double.infinity,
            height: 65,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                BlocSelector<CartBloc, CartState, int>(
                  selector: (state) {
                    return state.totalPrice;
                  },
                  builder: (context, state) {
                    return Text.rich(
                      TextSpan(
                        children: [
                          const TextSpan(
                            text: 'Subtotal\n',
                            style: TextStyle(color: AppColors.darkGreen),
                          ),
                          TextSpan(
                            text: '\$$state',
                            style: const TextStyle(
                              color: AppColors.darkGreen,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
                InkWell(
                  onTap: _onTap,
                  child: Container(
                    alignment: Alignment.center,
                    height: 45,
                    width: 190,
                    decoration: const BoxDecoration(
                      borderRadius: AppStyles.borderRadius16,
                      gradient: LinearGradient(
                        colors: [
                          AppColors.darkGreen,
                          AppColors.darkGreen2,
                          AppColors.darkGreen,
                        ],
                      ),
                    ),
                    child: const Text(
                      'CHECKOUT NOW',
                      style: TextStyle(
                        fontSize: 12,
                        color: AppColors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
