part of '../product.dart';

class _ProductWidget extends StatelessWidget {
  const _ProductWidget(this._product);

  final CartItem _product;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topLeft,
      children: [
        Column(
          children: [
            AppStyles.height30,
            Container(
              decoration: const BoxDecoration(
                borderRadius: AppStyles.borderRadius30,
                boxShadow: [
                  BoxShadow(
                    color: AppColors.tBlack,
                    blurRadius: 5,
                  ),
                ],
                color: AppColors.white,
              ),
              child: Column(
                children: [
                  AppStyles.height70,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 8, bottom: 8),
                        child: Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: '${_product.product.name}\n',
                                style: const TextStyle(
                                  color: AppColors.darkGreen,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              TextSpan(
                                text: '\$${_product.product.price}',
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
                      QuantityWidget(item: _product),
                    ],
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
              imageUrl: MediaProvider.getMedia(_product.product.image),
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
