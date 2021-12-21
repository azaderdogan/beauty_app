import '../../../product/utils/image_constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/context_extensions.dart';
import 'package:sizer/sizer.dart';

class SellerProductCard extends StatelessWidget {
  const SellerProductCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        _buildBackground(context),
        _buildPositionedImage1(),
        _buildPositionedImage2(),
        _buildPositionedImage3()
      ],
    );
  }

  Positioned _buildPositionedImage3() {
    return Positioned(
      right: 20.w,
      top: -5.h,
      child: Transform.rotate(
        angle: 0,
        child: Image.asset(ImageConstants.instance.yellowImage),
      ),
    );
  }

  Positioned _buildPositionedImage2() {
    return Positioned(
      left: 40.w,
      child: Transform.rotate(
          angle: 0,
          child: Image.asset(
            ImageConstants.instance.yellowImage2,
            fit: BoxFit.fitWidth,
          )),
    );
  }

  Positioned _buildPositionedImage1() {
    return Positioned(
      left: 10.w,
      child: Transform.rotate(
          angle: 0.3, child: Image.asset(ImageConstants.instance.greenImage)),
    );
  }

  Container _buildBackground(BuildContext context) {
    return Container(
      height: 17.6.h,
      decoration: BoxDecoration(
        color: context.theme.disabledColor,
        borderRadius: BorderRadius.circular(13),
      ),
      child: Row(
        children: [
          Transform.rotate(
            angle: 0.1479341073990394,
            child: Image.asset(
              ImageConstants.instance.cart,
              height: 20.h,
              width: 50.w,
            ),
          ),
          Transform.rotate(
            angle: 0.1479341073990394,
            child: Container(
              height: 15.h,
              width: 10.h,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(ImageConstants.instance.cart),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
