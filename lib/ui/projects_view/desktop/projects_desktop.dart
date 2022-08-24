import 'package:flutter/material.dart';

import '../../../core/projects.dart';
import '../../common/smooth_scroll.dart';
import '../common/project_widget.dart';

class ProjectsDesktop extends StatefulWidget {
  const ProjectsDesktop({Key? key}) : super(key: key);

  @override
  State<ProjectsDesktop> createState() => _ProjectsDesktopState();
}

class _ProjectsDesktopState extends State<ProjectsDesktop> {
  final _controller = SmoothScrollController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return GridView.count(
      controller: _controller,
      padding: EdgeInsets.symmetric(
        vertical: size.height * 0.05,
        horizontal: size.width * 0.05,
      ),
      shrinkWrap: true,
      mainAxisSpacing: size.width * 0.05,
      crossAxisSpacing: size.width * 0.05,
      crossAxisCount: 3,
      children: projects.map<Widget>(ProjectWidget.new).toList(),
    );
  }
}
