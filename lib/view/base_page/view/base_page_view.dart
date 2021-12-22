import 'package:beauty_app/view/base_page/widgets/custom_floating_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_utils/src/extensions/context_extensions.dart';
import 'package:sizer/sizer.dart';

import '../../../core/base/view/base_view.dart';
import '../../../core/widget/sizedBox/dynamic_horizontol_space.dart';
import '../../../product/utils/svg_constants.dart';
import '../controller/base_page_controller.dart';

class BasePageView extends BaseView<BasePageController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: controller.pageController,
        onPageChanged: (value) => controller.changePage(value),
        children: controller.pages,
      ),
      resizeToAvoidBottomInset: true,
      extendBody: true,
      bottomNavigationBar: _buildCustomBottomNavBar(context),
    );
  }

  Widget _buildCustomBottomNavBar(BuildContext context) {
    return CustomFloatingNavBar(
      basePageController: controller,
      items: [
        CustomFloatingNavBarItem(
            iconPath: SvgConstants.instance.home, text: 'Home'),
        CustomFloatingNavBarItem(
            iconPath: SvgConstants.instance.skincare, text: 'Products'),
        CustomFloatingNavBarItem(
            iconPath: SvgConstants.instance.calendar, text: 'Calendar'),
        CustomFloatingNavBarItem(
            iconPath: SvgConstants.instance.user, text: 'Profile'),
      ],
    );
  }
}

class CustomFloatingNavBarItem {
  final String iconPath;
  final String text;

  CustomFloatingNavBarItem({
    required this.iconPath,
    required this.text,
  });
}
