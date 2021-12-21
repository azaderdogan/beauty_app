import 'package:beauty_app/core/extensions/num.dart';
import 'package:beauty_app/core/extensions/padding_insets.dart';
import 'package:beauty_app/product/utils/svg_constants.dart';
import 'package:beauty_app/view/products/model/product.dart';
import 'package:beauty_app/view/products/model/product_category.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/base/view/base_view.dart';
import '../../../core/widget/sizedBox/dynamic_veritical_space.dart';
import '../constanst/products_constants_mixin.dart';
import '../controller/products_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/context_extensions.dart';
import 'package:sizer/sizer.dart';

class ProductsView extends BaseView<ProductsController> with ProductsConstants {
  ProductsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DynamicVerticalSpace(
              height: 6.2.h,
            ),
            Padding(
              padding: EdgeInsets.only(left: 8.5.w),
              child: Text(
                products,
                style: context.textTheme.headline1!
                    .copyWith(color: context.theme.colorScheme.background),
              ),
            ),
            DynamicVerticalSpace(),
            ProductCategoriesWidget(categories: categories, products: producst)
          ],
        ),
      ),
    );
  }
}

class ProductCategoriesWidget extends StatefulWidget {
  const ProductCategoriesWidget({
    Key? key,
    required this.products,
    required this.categories,
  }) : super(key: key);

  final List<Product> products;
  final List<ProductCategory> categories;

  @override
  State<ProductCategoriesWidget> createState() =>
      _ProductCategoriesWidgetState();
}

class _ProductCategoriesWidgetState extends State<ProductCategoriesWidget> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 37.1.h,
      child: Padding(
        padding: EdgeInsets.only(left: 8.5.w),
        child: Row(
          children: [
            CategoriesWidget(
              categories: widget.categories,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: widget.products.length,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => ProductCardWidget(
                  product: widget.products[index],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CategoriesWidget extends StatelessWidget {
  const CategoriesWidget({
    Key? key,
    required this.categories,
  }) : super(key: key);
  final List<ProductCategory> categories;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 20.w,
      child: Wrap(
        runAlignment: WrapAlignment.center,
        alignment: WrapAlignment.center,
        runSpacing: 2.1.h,
        children: [
          
        ],
      ),
    );
  }
}

class ProductCardWidget extends StatelessWidget {
  const ProductCardWidget({
    Key? key,
    required this.product,
  }) : super(key: key);
  final Product product;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      padding: context.paddingLow * 1.5,
      height: 20.h,
      width: 20.h,
      decoration: BoxDecoration(
          color: Colors.blueAccent, borderRadius: BorderRadius.circular(20)),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            product.title,
            style: context.textTheme.headline5!.copyWith(
              color: context.theme.colorScheme.background,
              fontSize: 16.scpx,
            ),
          ),
          Image.asset(
            product.imagePath,
            height: 21.9.h,
            width: 23.7.w,
            fit: BoxFit.fill,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '\$${product.price}',
                  style: context.textTheme.headline2!.copyWith(
                    color: context.theme.colorScheme.error,
                  ),
                ),
                IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset(
                      product.isFavorite
                          ? SvgConstants.instance.heartRed
                          : SvgConstants.instance.heart,
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}

class ProductTypeItem extends StatelessWidget {
  const ProductTypeItem({
    Key? key,
    required this.text,
    required this.iconPath,
  }) : super(key: key);

  final String text;
  final String iconPath;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(
          iconPath,
          height: 3.h,
          width: 3.h,
        ),
        Text(
          text,
          style: context.textTheme.headline3,
        )
      ],
    );
  }
}
