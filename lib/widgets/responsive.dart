import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  final Widget mobile;
  final Widget? tablet;

  const Responsive({
    super.key,
    required this.mobile,
    this.tablet,
  });

  // This isMobile, isTablet, isDesktop help us later
  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 850;

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width < 1100 &&
          MediaQuery.of(context).size.width >= 850;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    // If width it less then 1100 and more then 850 we consider it as tablet
    if (size.width >= 850 && tablet != null) {
      return tablet!;
    }
    // Or less then that we called it mobile
    else {
      return mobile;
    }
  }
}
