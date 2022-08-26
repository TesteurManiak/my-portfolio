import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../core/icons/my_portfolio_icons.dart';

@immutable
class LinkData {
  final IconData icon;
  final String url;
  final String name;

  const LinkData({
    this.icon = MyPortfolio.link,
    required this.url,
    required this.name,
  });

  const LinkData.android(this.url)
      : icon = MyPortfolio.android,
        name = 'Play Store';

  const LinkData.appStore(this.url)
      : icon = MyPortfolio.app_store,
        name = 'App Store';

  const LinkData.github(this.url)
      : icon = MyPortfolio.github,
        name = 'Github';

  const LinkData.gitlab(this.url)
      : icon = MyPortfolio.gitlab,
        name = 'Gitlab';

  const LinkData.linkedIn(this.url)
      : icon = MyPortfolio.linkedin_in,
        name = 'LinkedIn';

  const LinkData.medium(this.url)
      : icon = MyPortfolio.medium_m,
        name = 'Medium';

  const LinkData.package(this.url)
      : icon = MyPortfolio.box_open,
        name = 'Pub.dev';

  const LinkData.stackOverflow(this.url)
      : icon = MyPortfolio.stack_overflow,
        name = 'Stack Overflow';

  const LinkData.twitter(this.url)
      : icon = MyPortfolio.twitter,
        name = 'Twitter';

  Future<bool> openLink() => launchUrlString(url);
}
