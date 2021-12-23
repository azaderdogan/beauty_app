import 'package:beauty_app/view/products/widgets/product_card.dart';
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
              child: ProductCard(product: productList[index])),
        );
      },
    );
  }
}
