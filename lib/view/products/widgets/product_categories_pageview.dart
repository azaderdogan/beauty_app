
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../model/product.dart';
import '../model/product_category.dart';
import 'category_item.dart';
import 'product_cart_widget.dart';

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
  int selectedIndex = 0;
  late final PageController _pageController;
  @override
  void initState() {
    _pageController = PageController();
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 39.h,
      child: Padding(
        padding: EdgeInsets.only(left: 8.5.w),
        child: Row(
          children: [
            _buildCategories(),
            Expanded(child: _buildProductPageView()),
          ],
        ),
      ),
    );
  }

  PageView _buildProductPageView() {
    return PageView.builder(
      controller: _pageController,
      itemCount: 5,
      scrollDirection: Axis.vertical,
      allowImplicitScrolling: true,
      dragStartBehavior: DragStartBehavior.start,
      onPageChanged: (value) => setState(
        () {
          selectedIndex = value;
        },
      ),
      itemBuilder: (context, index) => ListView.builder(
        itemCount: widget.products.length,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => ProductCardWidget(
          product: widget.products[index],
        ),
      ),
    );
  }

  SizedBox _buildCategories() {
    return SizedBox(
      width: 20.w,
      child: ListView.builder(
        itemCount: widget.categories.length,
        shrinkWrap: true,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: index == 0 ? EdgeInsets.zero : EdgeInsets.only(top: 2.h),
            child: InkWell(
              onTap: () => _onTapCategory(index),
              child: CategoryItem(
                text: widget.categories[index].categoryName,
                iconPath: widget.categories[index].categoryIconPath,
                isSelected: index == selectedIndex,
              ),
            ),
          );
        },
      ),
    );
  }

  void _onTapCategory(int index) {
    return setState(() {
      selectedIndex = index;
      _pageController.animateToPage(selectedIndex,
          duration: const Duration(milliseconds: 400), curve: Curves.easeIn);
    });
  }
}
