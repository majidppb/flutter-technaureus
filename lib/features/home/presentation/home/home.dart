import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../commen_widgets/responsive_view.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_styles.dart';
import '../../../../core/utils/media_provider.dart';
import '../../domain/entities/offer.dart';
import '../../domain/entities/product.dart';
import '../../domain/entities/product_category.dart';
import '../core/widgets/cart_button.dart';
import 'bloc/home_bloc.dart';

part 'widgets/categories_section.dart';
part 'widgets/discovery_section.dart';
part 'widgets/carousel_section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static const path = '/home';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeBloc()..add(const HomeEvent()),
      lazy: false,
      child: const _HomeScreen(),
    );
  }
}

class _HomeScreen extends StatelessWidget {
  const _HomeScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bg,
      appBar: AppBar(
        backgroundColor: AppColors.bg,
        title: const Text(
          'Good day!👋🏻',
          style: TextStyle(color: AppColors.darkGreen),
        ),
        actions: const [
          CartButtonWidget(),
        ],
        bottom: PreferredSize(
          preferredSize: const Size(double.infinity, 50),
          child: SizedBox(
            height: 45,
            child: Padding(
              padding: AppStyles.hPadding30,
              child: SearchAnchor.bar(
                  isFullScreen: false,
                  dividerColor: AppColors.grey,
                  viewBackgroundColor: AppColors.white,
                  barBackgroundColor:
                      const MaterialStatePropertyAll(AppColors.white),
                  barElevation: const MaterialStatePropertyAll(5),
                  barHintText: 'Search grocery',
                  barHintStyle: const MaterialStatePropertyAll(TextStyle(
                    color: AppColors.grey,
                    fontWeight: FontWeight.bold,
                  )),
                  barSide: const MaterialStatePropertyAll(
                    BorderSide(
                      color: AppColors.grey,
                    ),
                  ),
                  barLeading: const Icon(
                    CupertinoIcons.search,
                    color: AppColors.grey,
                    size: 20,
                  ),
                  suggestionsBuilder: (ctx, controller) async {
                    return context
                        .read<HomeBloc>()
                        .state
                        .categories
                        .map((e) => ListTile(
                              title: Text(e.name),
                              leading: CircleAvatar(
                                backgroundImage:
                                    CachedNetworkImageProvider(e.image),
                              ),
                            ));
                  }),
            ),
          ),
        ),
      ),
      body: SafeArea(
        top: false,
        bottom: false,
        child: BlocBuilder<HomeBloc, HomeState>(
          builder: (context, state) {
            return ListView(
              physics: const BouncingScrollPhysics(),
              children: [
                AppStyles.height10,
                _CarouselSection(state.offers),
                AppStyles.height10,
                _CategoriesSection(state.categories),
                AppStyles.height10,
                _DiscoverySection(state.discover),
                AppStyles.height10,
              ],
            );
          },
        ),
      ),
    );
  }
}

const a = SearchBar(
  hintText: 'Search grocery',
  hintStyle: MaterialStatePropertyAll(TextStyle(
    color: AppColors.grey,
    fontWeight: FontWeight.bold,
  )),
  elevation: MaterialStatePropertyAll(5),
  shadowColor: MaterialStatePropertyAll(AppColors.tBlack2),
  surfaceTintColor: MaterialStatePropertyAll(Colors.transparent),
  side: MaterialStatePropertyAll(
    BorderSide(
      color: AppColors.grey,
    ),
  ),
  leading: Icon(
    CupertinoIcons.search,
    color: AppColors.grey,
    size: 20,
  ),
);
