import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get_utils/src/extensions/context_extensions.dart';
import 'package:sizer/sizer.dart';

class CategoryItem extends StatelessWidget {
  CategoryItem({
    Key? key,
    required this.text,
    required this.iconPath,
    this.isSelected = false,
  }) : super(key: key);

  final String text;
  final String iconPath;
  bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [_buildIcon(context), _buildText(context)],
    );
  }

  Text _buildText(BuildContext context) {
    return Text(
      text,
      style: context.textTheme.headline3!.copyWith(
        color: isSelected
            ? context.theme.colorScheme.background
            : context.theme.colorScheme.surface,
      ),
    );
  }

  CircleAvatar _buildIcon(BuildContext context) {
    return CircleAvatar(
      radius: 1.5.h,
      backgroundColor:
          isSelected ? context.theme.disabledColor : Colors.transparent,
      child: SvgPicture.asset(
        iconPath,
        height: 3.h,
        width: 3.h,
        color: isSelected
            ? context.theme.colorScheme.background
            : context.theme.colorScheme.surface,
      ),
    );
  }
}
