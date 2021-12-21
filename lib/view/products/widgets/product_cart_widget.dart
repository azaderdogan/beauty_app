import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get_utils/src/extensions/context_extensions.dart';
import 'package:sizer/sizer.dart';

import '../../../core/extensions/context_extension.dart';
import '../../../core/extensions/num.dart';
import '../../../core/extensions/padding_insets.dart';
import '../../../product/utils/svg_constants.dart';
import '../model/product.dart';

class ProductCardWidget extends StatelessWidget {
  const ProductCardWidget({
    Key? key,
    required this.product,
  }) : super(key: key);
  final Product product;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      padding: context.paddingLow * 1.5,
      height: 20.h,
      width: 20.h,
      decoration: BoxDecoration(
          color: context.randomColor.withOpacity(0.2),
          borderRadius: BorderRadius.circular(20)),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildTitle(context),
          _buildAssetImage(),
          Align(
            alignment: Alignment.bottomCenter,
            child: _buildPriceAndFavIcon(context),
          )
        ],
      ),
    );
  }

  Row _buildPriceAndFavIcon(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [_buildPriceText(context), _buildFavIconButton()],
    );
  }

  Text _buildPriceText(BuildContext context) {
    return Text(
      '\$ ${product.price}',
      style: context.textTheme.headline2!.copyWith(
        color: context.theme.colorScheme.error,
      ),
    );
  }

  IconButton _buildFavIconButton() {
    return IconButton(
        onPressed: () {},
        icon: SvgPicture.asset(
          product.isFavorite
              ? SvgConstants.instance.heartRed
              : SvgConstants.instance.heart,
        ));
  }

  Image _buildAssetImage() {
    return Image.asset(
      product.imagePath,
      height: 21.9.h,
      width: 23.7.w,
      fit: BoxFit.fill,
    );
  }

  Text _buildTitle(BuildContext context) {
    return Text(
      product.title,
      style: context.textTheme.headline5!.copyWith(
        color: context.theme.colorScheme.background,
        fontSize: 16.scpx,
      ),
    );
  }
}
