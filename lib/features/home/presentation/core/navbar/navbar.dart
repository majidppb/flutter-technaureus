import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_styles.dart';

class NavBarScreen extends StatelessWidget {
  const NavBarScreen({
    super.key,
    required StatefulNavigationShell child,
  }) : _child = child;

  static int index = 0;

  static const _items = [
    BottomNavigationBarItem(
      icon: Icon(Icons.home_rounded),
      label: 'Home',
    ),
    BottomNavigationBarItem(
      icon: Icon(CupertinoIcons.bag_fill),
      label: 'Product',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.person),
      label: 'Customer',
    ),
  ];

  final StatefulNavigationShell _child;

  @override
  Widget build(BuildContext context) {
    final radius = Radius.elliptical(MediaQuery.of(context).size.width / 2,
        MediaQuery.of(context).size.height / 60);

    return Scaffold(
      extendBody: true,
      body: _child,
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: radius,
          topRight: radius,
        ),
        child: SizedBox(
          width: double.infinity,
          height: 70,
          child: BackdropFilter(
            filter: AppStyles.blurFilter,
            child: BottomNavigationBar(
              currentIndex: index,
              type: BottomNavigationBarType.fixed,
              elevation: 0,
              backgroundColor: AppColors.darkGreenTransparent,
              selectedItemColor: AppColors.white,
              unselectedItemColor: AppColors.darkGreen,
              items: _items,
              onTap: (newIndex) => _child.goBranch(
                newIndex,
                initialLocation: newIndex == _child.currentIndex,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
