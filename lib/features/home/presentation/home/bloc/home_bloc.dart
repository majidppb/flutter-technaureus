import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/utils/app_assets.dart';
import '../../../domain/entities/offer.dart';
import '../../../domain/entities/product.dart';
import '../../../domain/entities/product_category.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc()
      : super(const HomeState(
          offers: [],
          categories: [],
          discover: [],
        )) {
    on<HomeEvent>((event, emit) {
      emit(
        HomeState(
          offers: const [
            Offer(
              poster:
                  'https://img.pikbest.com/wp/202413/plant-silhouette-farm-organic-fruit-web-banner_6080030.jpg!w700wp',
            ),
            Offer(
              poster:
                  'https://thumbs.dreamstime.com/b/vegetable-mushroom-banner-farm-product-tomato-carrot-pepper-cabbage-broccoli-onion-cucumber-corn-olives-pumpkin-avocado-101936334.jpg',
            ),
            Offer(
              poster:
                  'https://img.freepik.com/free-vector/flat-supermarket-sale-background_23-2149379271.jpg',
            ),
            Offer(
              poster:
                  'https://static.vecteezy.com/system/resources/previews/001/072/259/original/summer-sale-banner-with-fruit-vector.jpg',
            ),
            Offer(
              poster:
                  'https://img.freepik.com/premium-photo/top-view-variety-fresh-fish-seafood-ice_126277-745.jpg',
            ),
          ],
          categories: const [
            ProductCategory(
              name: 'Fruits',
              image:
                  'https://static.libertyprim.com/files/familles/pomme-large.jpg',
            ),
            ProductCategory(
              name: 'Vegetables',
              image:
                  'https://t4.ftcdn.net/jpg/02/66/68/37/360_F_266683754_wzx9XxeNXKudct2Q3qwQf1PvVaQaKOf6.jpg',
            ),
            ProductCategory(
              name: 'Fish',
              image:
                  'https://www.shutterstock.com/image-photo/isolated-crucian-carp-kind-fish-600nw-454304059.jpg',
            ),
            ProductCategory(
              name: 'Meat',
              image:
                  'https://t4.ftcdn.net/jpg/00/83/36/05/360_F_83360582_oxUzWNwMqPLewOONSG5V8Kb6kfmDkdeP.jpg',
            ),
            ProductCategory(
              name: 'Nuts',
              image:
                  'https://zamindarkesar.com/wp-content/uploads/2021/03/mixed-dry-fruits.png',
            ),
          ],
          discover: [
            Product(id: 1, name: 'Orange', price: 5, image: AppAssets.orange),
            Product(id: 2, name: 'Avocado', price: 6, image: AppAssets.avocado),
            Product(id: 3, name: 'Kiwi', price: 2, image: AppAssets.kiwi),
            Product(id: 12, name: 'Papaya', price: 32, image: AppAssets.papaya),
            Product(
                id: 4, name: 'Watermelone', price: 7, image: AppAssets.melone),
            Product(id: 5, name: 'Pear', price: 8, image: AppAssets.pear),
            Product(id: 6, name: 'Apple', price: 9, image: AppAssets.apple),
            Product(id: 7, name: 'Cherry', price: 7, image: AppAssets.cherry),
          ],
        ),
      );
    });
  }
}
