import 'package:beauty_app/view/home/widgets/seller_product_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../../core/base/view/base_view.dart';
import '../controller/product_detaill_controller.dart';

class ProductDetailView extends BaseView<ProductDetailController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SellerProductCard(),
        ],
      ),
    );
  }
}
