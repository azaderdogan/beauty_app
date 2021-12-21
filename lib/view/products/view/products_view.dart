import 'package:beauty_app/core/base/view/base_view.dart';
import 'package:beauty_app/core/widget/sizedBox/dynamic_veritical_space.dart';
import 'package:beauty_app/view/products/constanst/products_constants_mixin.dart';
import 'package:beauty_app/view/products/controller/products_controller.dart';
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
          children: [
            DynamicVerticalSpace(
              height: 6.2.h,
            ),
            Text(
              products,
              style: context.textTheme.headline2,
            ),
            DynamicVerticalSpace(),
            SizedBox(
              height: 37.1.h,
              child: Row(
                children: [
                  SizedBox(
                    width: 20.w,
                    child: Column(),
                  ),
                  Expanded(
                      child: ListView.builder(
                    itemCount: 4,
                    shrinkWrap: true,
                    itemBuilder: (context, index) => Container(
                      color: Colors.red,
                    ),
                  ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
