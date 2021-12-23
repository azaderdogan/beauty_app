import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../../core/base/view/base_view.dart';
import '../../../product/utils/svg_constants.dart';
import '../controller/base_page_controller.dart';
import '../widgets/custom_floating_nav_bar.dart';
import '../widgets/custom_floating_nav_bar_item.dart';

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
