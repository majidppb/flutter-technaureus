import 'package:flutter/material.dart';

class ResponsiveView extends StatelessWidget {
  const ResponsiveView({
    super.key,
    required Widget phoneView,
    required Widget tabletView,
  })  : _phone = phoneView,
        _tablet = tabletView;

  static const _tabletChangePoint = 600;

  final Widget _phone;
  final Widget _tablet;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    if (width < _tabletChangePoint) {
      return _phone;
    } else {
      return _tablet;
    }
  }
}
