import 'package:beauty_app/view/base_page/controller/base_page_controller.dart';
import 'package:beauty_app/view/base_page/view/base_page_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_utils/src/extensions/context_extensions.dart';
import 'package:sizer/sizer.dart';

import 'nav_bar_item_widget.dart';

class CustomFloatingNavBar extends StatefulWidget {
  CustomFloatingNavBar({
    Key? key,
    required this.items,
    required this.basePageController,
  }) : super(key: key);
  final List<CustomFloatingNavBarItem> items;
  final BasePageController basePageController;
  @override
  State<CustomFloatingNavBar> createState() => _CustomFloatingNavBarState();
}

class _CustomFloatingNavBarState extends State<CustomFloatingNavBar> {
  @override
  Widget build(BuildContext context) {
    return Obx(() => BottomAppBar(
          color: Colors.transparent,
          elevation: 0,
          child: Container(
            width: 83.w,
            height: 7.1.h,
            padding: EdgeInsets.symmetric(vertical: 1.7.h, horizontal: 6.4.w),
            margin: EdgeInsets.symmetric(horizontal: 6.9.w, vertical: 6.9.w),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(40)),
                color: context.theme.backgroundColor,
                boxShadow: [
                  BoxShadow(
                    color: context.theme.colorScheme.surface.withOpacity(0.2),
                    spreadRadius: 3,
                    blurRadius: 10,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ]),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: widget.items
                  .asMap()
                  .map(
                    (key, value) {
                      return MapEntry(
                        key,
                        InkWell(
                          onTap: () =>
                              widget.basePageController.changePage(key),
                          child: NavBarItemWidget(
                            isCurrentItem:
                                widget.basePageController.currentIndex == key,
                            customFloatingNavBarItem: CustomFloatingNavBarItem(
                              iconPath: value.iconPath,
                              text: value.text,
                            ),
                          ),
                        ),
                      );
                    },
                  )
                  .values
                  .toList(),
            ),
          ),
        ));
  }
}