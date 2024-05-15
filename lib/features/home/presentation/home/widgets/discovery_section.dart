part of '../home.dart';

class _DiscoverySection extends StatelessWidget {
  const _DiscoverySection(this.items);

  final List<Product> items;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppStyles.hPadding10,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Discovery',
                style: Theme.of(context)
                    .textTheme
                    .titleMedium!
                    .copyWith(color: AppColors.darkGreen),
              ),
              TextButton(
                onPressed: () {},
                child: const Text(
                  'See all >',
                  style: TextStyle(color: AppColors.darkGreen),
                ),
              ),
            ],
          ),
          AppStyles.height10,
          ResponsiveView(
            phoneView: GridView.count(
              physics: const NeverScrollableScrollPhysics(),
              crossAxisCount: 2,
              crossAxisSpacing: 11,
              mainAxisSpacing: 11,
              childAspectRatio: 185 / 180,
              shrinkWrap: true,
              children: items.map((item) => _DiscoveryWidget(item)).toList(),
            ),
            tabletView: GridView.count(
              physics: const NeverScrollableScrollPhysics(),
              crossAxisCount: 4,
              crossAxisSpacing: 15,
              mainAxisSpacing: 15,
              childAspectRatio: 185 / 180,
              shrinkWrap: true,
              children: items.map((item) => _DiscoveryWidget(item)).toList(),
            ),
          ),
        ],
      ),
    );
  }
}

class _DiscoveryWidget extends StatelessWidget {
  const _DiscoveryWidget(this._product);

  final Product _product;

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
                        padding: AppStyles.padding8,
                        child: Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: '${_product.name}\n',
                                style: const TextStyle(
                                  color: AppColors.darkGreen,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              TextSpan(
                                text: '\$${_product.price}',
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
                      const _QuantityWidget(),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: ClipRRect(
            borderRadius: AppStyles.borderRadius16,
            child: Image.asset(
              _product.image,
              height: 100,
              width: 100,
              fit: BoxFit.cover,
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(bottom: 50),
          child: Align(
            alignment: Alignment.centerRight,
            child: _LikeWidget(),
          ),
        ),
      ],
    );
  }
}

// Like
class _LikeWidget extends StatefulWidget {
  const _LikeWidget();

  @override
  State<_LikeWidget> createState() => _LikeWidgetState();
}

class _LikeWidgetState extends State<_LikeWidget> {
  bool _isLiked = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        setState(() {
          _isLiked = !_isLiked;
        });
      },
      icon: _isLiked
          ? const Icon(
              Icons.favorite_rounded,
              color: AppColors.red,
            )
          : const Icon(
              Icons.favorite_border_rounded,
              color: AppColors.red,
            ),
    );
  }
}

// Quantity
class _QuantityWidget extends StatefulWidget {
  const _QuantityWidget();

  @override
  State<_QuantityWidget> createState() => __QuantityWidgetState();
}

class __QuantityWidgetState extends State<_QuantityWidget> {
  int count = 0;

  void _onAdd() {
    setState(() {
      count++;
    });
  }

  void _onRemove() {
    setState(() {
      count--;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (count == 0) {
      return IconButton(
        onPressed: _onAdd,
        icon: const Icon(
          Icons.add_circle,
          size: 30,
          color: AppColors.darkGreen2,
        ),
      );
    } else {
      return Row(
        children: [
          IconButton(
            visualDensity: VisualDensity.compact,
            onPressed: _onRemove,
            style: const ButtonStyle(
              padding: MaterialStatePropertyAll(EdgeInsets.zero),
              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            ),
            icon: const Icon(
              Icons.remove_circle_outline,
              color: AppColors.darkGreen2,
            ),
          ),
          Text(count.toString()),
          IconButton(
            visualDensity: VisualDensity.compact,
            style: const ButtonStyle(
              padding: MaterialStatePropertyAll(EdgeInsets.zero),
              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            ),
            onPressed: _onAdd,
            icon: const Icon(
              Icons.add_circle,
              color: AppColors.darkGreen2,
            ),
          )
        ],
      );
    }
  }
}
