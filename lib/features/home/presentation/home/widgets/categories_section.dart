part of '../home.dart';

class _CategoriesSection extends StatelessWidget {
  const _CategoriesSection(this.items);

  final List<ProductCategory> items;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: AppStyles.hPadding10,
          child: Text(
            'Categories',
            style: Theme.of(context)
                .textTheme
                .titleMedium!
                .copyWith(color: AppColors.darkGreen),
          ),
        ),
        SizedBox(
          width: double.infinity,
          height: 100,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            padding: AppStyles.hPadding10,
            physics: const BouncingScrollPhysics(),
            itemBuilder: (context, index) => _CategoryWidget(items[index]),
            itemCount: items.length,
          ),
        ),
      ],
    );
  }
}

class _CategoryWidget extends StatelessWidget {
  const _CategoryWidget(this._category);

  final ProductCategory _category;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 90,
      height: 90,
      margin: AppStyles.padding5,
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
      child: Column(
        children: [
          CachedNetworkImage(
            height: 53,
            fit: BoxFit.contain,
            imageUrl: _category.image,
            placeholder: MediaProvider.mediaPlaceholder,
            errorWidget: MediaProvider.mediaErrorWidget,
          ),
          Text(
            _category.name,
            style: const TextStyle(color: AppColors.grey),
          ),
        ],
      ),
    );
  }
}
