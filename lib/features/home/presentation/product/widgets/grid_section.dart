part of '../product.dart';

class _GridSection extends StatelessWidget {
  const _GridSection(this.products);

  final List<CartItem> products;

  @override
  Widget build(BuildContext context) {
    return ResponsiveView(
      phoneView: GridView.builder(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.only(
          left: 8,
          right: 8,
          bottom: 160,
          top: 15,
        ),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 11,
          mainAxisSpacing: 11,
          childAspectRatio: 185 / 180,
        ),
        itemBuilder: (context, index) => _ProductWidget(products[index]),
        itemCount: products.length,
      ),
      tabletView: GridView.builder(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.only(
          left: 15,
          right: 15,
          bottom: 150,
          top: 15,
        ),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          crossAxisSpacing: 15,
          mainAxisSpacing: 15,
          childAspectRatio: 185 / 180,
        ),
        itemBuilder: (context, index) => _ProductWidget(products[index]),
        itemCount: products.length,
      ),
    );
  }
}
