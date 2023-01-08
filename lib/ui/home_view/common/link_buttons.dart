import 'package:flutter/material.dart';
import 'package:my_portfolio/models/link_data.dart';
import 'package:my_portfolio/style/text_styles.dart';
import 'package:seo_renderer/seo_renderer.dart';

const _links = <LinkData>[
  LinkData.medium('https://rouxguillaume.medium.com/'),
  LinkData.stackOverflow(
    'https://stackoverflow.com/users/9942346/guillaume-roux?tab=profile',
  ),
  LinkData.linkedIn(
    'https://www.linkedin.com/in/guillaume2-roux/?locale=en_US',
  ),
  LinkData.github('https://github.com/TesteurManiak'),
  LinkData.gitlab('https://gitlab.com/G_Roux'),
  LinkData.twitter('https://twitter.com/TesteurManiak'),
];

class LinkButtons extends StatelessWidget {
  const LinkButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextRenderer(
          child: Text(
            'Find Me on',
            style: TextStyles.selectSubHeadline(context),
          ),
        ),
        Wrap(
          children: _links
              .map<Widget>(
                (e) => LinkRenderer(
                  text: e.name,
                  href: e.url,
                  child: IconButton(
                    onPressed: e.openLink,
                    icon: Icon(e.icon),
                  ),
                ),
              )
              .toList(),
        ),
      ],
    );
  }
}
