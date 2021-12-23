import 'package:beauty_app/core/constants/app/app_constants.dart';
import 'package:beauty_app/core/extensions/context_extension.dart';
import 'package:beauty_app/product/utils/svg_constants.dart';
import 'package:beauty_app/view/products/model/product.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get_utils/src/extensions/context_extensions.dart';
import 'package:sizer/sizer.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({Key? key, required this.product}) : super(key: key);

  final Product product;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _buildProductImage(context),
        Expanded(
          flex: 10,
          child: _buildTitleAndPrice(context),
        ),
        Expanded(flex: 2, child: _buildHeartIcon())
      ],
    );
  }

  Container _buildProductImage(
    BuildContext context,
  ) {
    return Container(
      height: 12.8.h,
      width: 12.8.h,
      decoration: BoxDecoration(
        color: context.randomColor.withOpacity(0.2),
        borderRadius: BorderRadius.circular(13),
      ),
      child: Image.asset(
        product.imagePath,
        fit: BoxFit.contain,
      ),
    );
  }

  Padding _buildTitleAndPrice(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 4.3.w),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            product.title,
            style: context.textTheme.headline2!.copyWith(
              overflow: TextOverflow.ellipsis,
            ),
            maxLines: 2,
          ),
          Text(
            '\$ ${product.price}',
            style: context.textTheme.headline2!.copyWith(
                color: context.theme.colorScheme.error,
                fontWeight: FontWeight.w500,
                fontStyle: FontStyle.normal,
                fontFamily: ApplicationConstants.FONT_FAMILY_MEDIUM),
          )
        ],
      ),
    );
  }

  Align _buildHeartIcon() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: SvgPicture.asset(SvgConstants.instance.heartRed),
    );
  }
}
