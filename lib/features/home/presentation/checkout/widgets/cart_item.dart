part of '../checkout.dart';

class _CartItemWidget extends StatelessWidget {
  const _CartItemWidget(this._cartItem);

  final CartItem _cartItem;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topLeft,
      children: [
        Column(
          children: [
            AppStyles.height30,
            Container(
              height: 80,
              padding: AppStyles.padding8,
              decoration: const BoxDecoration(
                color: AppColors.white,
                borderRadius: AppStyles.borderRadius16,
                boxShadow: [
                  BoxShadow(
                    color: AppColors.tBlack,
                    blurRadius: 5,
                  ),
                ],
              ),
              child: Row(
                children: [
                  const Spacer(flex: 3),
                  Expanded(
                    flex: 6,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SizedBox(
                          height: 60,
                          width: 90,
                          child: Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: '${_cartItem.product.name}\n',
                                  style: const TextStyle(
                                    color: AppColors.darkGreen,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                TextSpan(
                                  text: '\$${_cartItem.product.price}',
                                  style: const TextStyle(
                                    color: AppColors.darkGreen,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const TextSpan(
                                  text: '/kg',
                                  style: TextStyle(
                                    color: AppColors.grey,
                                  ),
                                ),
                              ],
                            ),
                            textAlign: TextAlign.start,
                          ),
                        ),
                        SizedBox(
                          width: 90,
                          height: 50,
                          child: Center(
                            child: QuantityWidget(item: _cartItem),
                          ),
                        ),
                        Text(
                          '\$${_cartItem.totalPrice}',
                          style: const TextStyle(
                            color: AppColors.darkGreen,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: ClipRRect(
            borderRadius: AppStyles.borderRadius16,
            child: CachedNetworkImage(
              imageUrl: MediaProvider.getMedia(_cartItem.product.image),
              placeholder: MediaProvider.mediaPlaceholder,
              errorWidget: MediaProvider.mediaErrorWidget,
              height: 100,
              width: 100,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    );
  }
}
