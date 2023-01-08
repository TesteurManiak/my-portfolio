import 'package:flutter/material.dart';
import 'package:my_portfolio/ui/about_view/desktop/about_desktop.dart';
import 'package:my_portfolio/ui/about_view/mobile/about_mobile.dart';
import 'package:my_portfolio/ui/common/responsive_layout.dart';

class AboutView extends StatelessWidget {
  const AboutView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ResponsiveLayout(
      mobile: AboutMobile(),
      desktop: AboutDesktop(),
    );
  }
}
