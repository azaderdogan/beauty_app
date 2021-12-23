import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../product/utils/image_constants.dart';
import '../../../product/widgets/product_background_card.dart';

class SellerProductCard extends StatelessWidget {
  const SellerProductCard({
    Key? key,
    required this.containerHeight,
  }) : super(key: key);
  final double containerHeight;
  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        ProductBackgroundCard(
          containerHeight: containerHeight,
          imageAssetPath: ImageConstants.instance.cart,
        ),
        _buildPositionedImage1(),
        _buildPositionedImage2(),
        _buildPositionedImage3()
      ],
    );
  }

  Positioned _buildPositionedImage3() {
    return Positioned(
      right: 20.w,
      bottom: containerHeight * 0.3,
      child: Transform.rotate(
        angle: 0,
        child: Image.asset(
          ImageConstants.instance.yellowImage,
          height: containerHeight - 1.h,
          fit: BoxFit.fill,
        ),
      ),
    );
  }

  Positioned _buildPositionedImage2() {
    return Positioned(
      right: 40.w,
      bottom: containerHeight * 0.2,
      child: Transform.rotate(
          angle: 0,
          child: Image.asset(
            ImageConstants.instance.yellowImage2,
            height: containerHeight - 1.h,
            fit: BoxFit.fill,
          )),
    );
  }

  Positioned _buildPositionedImage1() {
    return Positioned(
      right: 55.w,
      bottom: containerHeight * 0.1,
      child: Transform.rotate(
        angle: -0.2,
        child: Image.asset(
          ImageConstants.instance.greenImage,
          height: containerHeight - 1.h,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
