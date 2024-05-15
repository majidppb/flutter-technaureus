part of '../home.dart';

class _CarouselSection extends StatelessWidget {
  const _CarouselSection(this.items);

  final List<Offer> items;

  static int _index = 0;

  @override
  Widget build(BuildContext context) {
    return ResponsiveView(
      phoneView: CarouselSlider(
        items: items.map((e) => _CarouselItem(e)).toList(),
        options: CarouselOptions(
          initialPage: _index,
          onPageChanged: (currentIndex, reason) => _index = currentIndex,
          autoPlay: true,
          aspectRatio: 1.8,
          viewportFraction: 0.85,
          enableInfiniteScroll: false,
          scrollDirection: Axis.horizontal,
        ),
      ),
      tabletView: CarouselSlider(
        items: items.map((e) => _CarouselItem(e)).toList(),
        options: CarouselOptions(
          height: 300,
          initialPage: _index,
          onPageChanged: (currentIndex, reason) => _index = currentIndex,
          autoPlay: true,
          aspectRatio: 2,
          viewportFraction: 0.8,
          enableInfiniteScroll: false,
          scrollDirection: Axis.horizontal,
        ),
      ),
    );
  }
}

class _CarouselItem extends StatelessWidget {
  const _CarouselItem(this._poster);

  final Offer _poster;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: AppStyles.padding5,
      decoration: const BoxDecoration(
        borderRadius: AppStyles.borderRadius30,
        color: AppColors.white,
      ),
      child: ClipRRect(
        borderRadius: AppStyles.borderRadius30,
        child: CachedNetworkImage(
          imageUrl: _poster.poster,
          placeholder: MediaProvider.mediaPlaceholder,
          errorWidget: MediaProvider.mediaErrorWidget,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
