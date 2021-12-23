import 'dart:ui';

import 'package:beauty_app/product/utils/image_constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/context_extensions.dart';
import 'package:sizer/sizer.dart';

class ProductBackgroundCard extends StatelessWidget {
  const ProductBackgroundCard({
    Key? key,
    required this.containerHeight,
    required this.imageAssetPath,
  }) : super(key: key);

  final double containerHeight;
  final String imageAssetPath;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        ClipRRect(
          child: ImageFiltered(
            imageFilter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
            child: Container(
              height: containerHeight,
              padding: EdgeInsets.symmetric(
                horizontal: 3.w,
              ),
              decoration: BoxDecoration(
                color: context.theme.disabledColor,
                borderRadius: BorderRadius.circular(13),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Transform.rotate(
                    angle: -0.20,
                    child: Image.asset(
                      imageAssetPath,
                      height: containerHeight / 2.5,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Transform.rotate(
                    angle: 0.20,
                    child: Image.asset(
                      imageAssetPath,
                      height: containerHeight / 1.8,
                      fit: BoxFit.fill,
                      colorBlendMode: BlendMode.dstIn,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    ); /* SizedBox(
      height: containerHeight,
      child: Stack(
        fit: StackFit.expand,
        clipBehavior: Clip.none,
        children: [
          Container(
            decoration: BoxDecoration(
              color: context.theme.disabledColor,
              borderRadius: BorderRadius.circular(13),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Transform.rotate(
                  angle: 0.1479341073990394,
                  child: Image.asset(
                    imageAssetPath,
                    height: containerHeight - 9.h,
                    fit: BoxFit.fill,
                  ),
                ),
                Transform.rotate(
                  angle: 0.1479341073990394,
                  child: Image.asset(
                    imageAssetPath,
                    height: containerHeight - 5.h,
                    fit: BoxFit.fill,
                    colorBlendMode: BlendMode.dstIn,
                  ),
                ),
              ],
            ),
          ),
          ClipRRect(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
              child: Container(
                color: Colors.grey.withOpacity(0.1),
                alignment: Alignment.center,
                child: child,
              ),
            ),
          ),
        ],
      ),
    ); */
  }
}
