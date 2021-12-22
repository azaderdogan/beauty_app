import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get_utils/src/extensions/context_extensions.dart';
import 'package:sizer/sizer.dart';

import '../../../core/constants/app/app_constants.dart';
import '../../../core/extensions/context_extension.dart';
import '../../../product/utils/svg_constants.dart';
import '../model/product.dart';

class MostPopularListView extends StatelessWidget {
  const MostPopularListView({
    Key? key,
    required this.productList,
    required ScrollController scrollController,
  })  : _scrollController = scrollController,
        super(key: key);

  final List<Product> productList;
  final ScrollController _scrollController;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: productList.length,
      shrinkWrap: true,
      controller: _scrollController,
      physics: NeverScrollableScrollPhysics(),
      itemBuilder: (BuildContext context, int index) {
        return SizedBox(
          height: 12.8.h,
          width: double.infinity,
          child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: _buildImageTitlePriceAndHeart(context, index)),
        );
      },
    );
  }

  Row _buildImageTitlePriceAndHeart(BuildContext context, int index) {
    return Row(
      children: [
        _buildProductImage(context, index),
        Expanded(
          flex: 10,
          child: _buildTitleAndPrice(index, context),
        ),
        Expanded(flex: 2, child: _buildHeartIcon())
      ],
    );
  }

  Container _buildProductImage(BuildContext context, int index) {
    return Container(
      height: 12.8.h,
      width: 12.8.h,
      decoration: BoxDecoration(
        color: context.randomColor.withOpacity(0.2),
        borderRadius: BorderRadius.circular(13),
      ),
      child: Image.asset(
        productList[index].imagePath,
        fit: BoxFit.contain,
      ),
    );
  }

  Padding _buildTitleAndPrice(int index, BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 4.3.w),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            productList[index].title,
            style: context.textTheme.headline2!.copyWith(
              overflow: TextOverflow.ellipsis,
            ),
            maxLines: 2,
          ),
          Text(
            '\$ ${productList[index].price}',
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
