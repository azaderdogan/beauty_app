import 'package:beauty_app/product/utils/image_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get_utils/src/extensions/context_extensions.dart';
import 'package:sizer/sizer.dart';

import '../../../core/base/view/base_view.dart';
import '../../../product/widgets/product_background_card.dart';
import '../controller/product_detaill_controller.dart';

class ProductDetailView extends BaseView<ProductDetailController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              ProductBackgroundCard(
                containerHeight: 52.6.h,
                imageAssetPath: ImageConstants.instance.image7,
              ),
              Positioned.fill(
                child: Image.asset(
                  ImageConstants.instance.image7,
                  height: 31.9.h,
                  fit: BoxFit.fitHeight,
                ),
              ),
              Positioned(
                right: 8.5.w,
                top: 3.9.h,
                child: SafeArea(
                  child: Hero(
                    tag: 'productImage',
                    child: Container(
                      height: 5.2.h,
                      width: 5.2.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(13),
                        color: context.theme.colorScheme.onSurface,
                      ),
                      child: const Icon(
                        Icons.cancel,
                      ),
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
