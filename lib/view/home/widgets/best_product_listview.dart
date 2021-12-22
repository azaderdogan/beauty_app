import 'package:beauty_app/core/extensions/context_extension.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class BestProductListView extends StatelessWidget {
  const BestProductListView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 20.h,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 3,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => _buildProductItem(context),
      ),
    );
  }

  Container _buildProductItem(BuildContext context) {
    return Container(
      height: 20.h,
      width: 20.h,
      margin: EdgeInsets.symmetric(horizontal: 10),
      color: context.randomColor.withOpacity(0.4),
    );
  }
}
