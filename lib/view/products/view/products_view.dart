import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/context_extensions.dart';
import 'package:sizer/sizer.dart';

import '../../../core/base/view/base_view.dart';
import '../../../core/widget/sizedBox/dynamic_veritical_space.dart';
import '../constanst/products_constants_mixin.dart';
import '../controller/products_controller.dart';
import '../widgets/most_popular_list_view.dart';
import '../widgets/product_categories_pageview.dart';

class ProductsView extends BaseView<ProductsController> with ProductsConstants {
  ProductsView({Key? key}) : super(key: key);
  late ScrollController _scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.theme.backgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          controller: _scrollController,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              DynamicVerticalSpace(
                height: 6.2.h,
              ),
              _buildProductText(context),
              DynamicVerticalSpace(),
              ProductCategoriesWidget(
                  categories: categories, products: productList),
              DynamicVerticalSpace(),
              _buildMostPopularText(context),
              DynamicVerticalSpace(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.5.w),
                child: MostPopularListView(
                    productList: productList,
                    scrollController: _scrollController),
              )
            ],
          ),
        ),
      ),
    );
  }

  Padding _buildMostPopularText(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.5.w),
      child: Text(mostPopular, style: context.textTheme.headline2),
    );
  }

  Padding _buildProductText(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 8.5.w),
      child: Text(
        products,
        style: context.textTheme.headline1!
            .copyWith(color: context.theme.colorScheme.background),
      ),
    );
  }
}
