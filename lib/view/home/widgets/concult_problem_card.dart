import 'package:beauty_app/core/widget/sizedBox/dynamic_veritical_space.dart';
import 'package:beauty_app/product/utils/image_constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/context_extensions.dart';
import 'package:sizer/sizer.dart';

class ConcultProblemCard extends StatelessWidget {
  const ConcultProblemCard({
    Key? key,
    required this.problemTitle,
    required this.problemSubtitle,
    required this.getRsvp,
  }) : super(key: key);

  final String problemTitle;
  final String problemSubtitle;
  final String getRsvp;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        _buildBackgroundContainer(context),
        Positioned(
          left: -5.w,
          bottom: 0,
          child: _buildImageTitleSubtitleAndButton(context),
        )
      ],
    );
  }

  Row _buildImageTitleSubtitleAndButton(BuildContext context) {
    return Row(
      children: [_buildImage(), _buildTitleSubtitleAndButton(context)],
    );
  }

  SizedBox _buildTitleSubtitleAndButton(BuildContext context) {
    return SizedBox(
      width: 50.w,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(problemTitle, style: context.textTheme.headline2),
          DynamicVerticalSpace(
            height: 1.h,
          ),
          Text(problemSubtitle,
              style: context.textTheme.headline5!.copyWith(
                color: context.theme.colorScheme.background,
                height: 1.3,
              )),
          DynamicVerticalSpace(
            height: 1.h,
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: _buildButton(context),
          )
        ],
      ),
    );
  }

  TextButton _buildButton(BuildContext context) {
    return TextButton(
        style: ButtonStyle(
          padding: MaterialStateProperty.all(
            EdgeInsets.symmetric(horizontal: 3.2.w),
          ),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18.0),
            ),
          ),
          backgroundColor: MaterialStateProperty.all(
            context.theme.colorScheme.onSecondary,
          ),
        ),
        onPressed: () {},
        child: Text(
          getRsvp,
          style: context.textTheme.headline5!
              .copyWith(color: context.theme.colorScheme.background),
        ));
  }

  Image _buildImage() {
    return Image.asset(
      ImageConstants.instance.person,
      width: 34.7.w,
      height: 18.7.h,
      fit: BoxFit.fill,
    );
  }

  Container _buildBackgroundContainer(BuildContext context) {
    return Container(
      height: 17.6.h,
      decoration: BoxDecoration(
        color: context.theme.colorScheme.secondaryVariant,
        borderRadius: BorderRadius.circular(13),
      ),
    );
  }
}
