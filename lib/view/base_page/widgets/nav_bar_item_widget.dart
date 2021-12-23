import 'package:beauty_app/view/base_page/view/base_page_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get_utils/src/extensions/context_extensions.dart';
import 'package:sizer/sizer.dart';

import 'custom_floating_nav_bar_item.dart';

class NavBarItemWidget extends StatelessWidget {
  NavBarItemWidget(
      {Key? key,
      required this.isCurrentItem,
      required this.customFloatingNavBarItem,
      required this.onTap})
      : super(key: key);
  bool isCurrentItem;
  final CustomFloatingNavBarItem customFloatingNavBarItem;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 400),
      height: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 3.9.w),
      decoration: BoxDecoration(
        color: isCurrentItem
            ? context.theme.colorScheme.primary.withOpacity(0.32)
            : Colors.transparent,
        borderRadius: const BorderRadius.all(Radius.circular(40)),
      ),
      child: _buildIconAndText(context),
    );
  }

  InkWell _buildIconAndText(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Row(
        children: [
          _buildIcon(context),
          isCurrentItem ? _buildText(context) : SizedBox.shrink(),
        ],
      ),
    );
  }

  Padding _buildText(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 2.1.w),
      child: Text(
        customFloatingNavBarItem.text,
        style: context.textTheme.headline3!.copyWith(
          color: context.theme.colorScheme.primary,
        ),
      ),
    );
  }

  SizedBox _buildIcon(BuildContext context) {
    return SizedBox(
      height: 2.h,
      width: 1.8.h,
      child: SvgPicture.asset(
        customFloatingNavBarItem.iconPath,
        color: isCurrentItem
            ? context.theme.colorScheme.primary
            : context.theme.colorScheme.surface,
        fit: BoxFit.fill,
      ),
    );
  }
}
