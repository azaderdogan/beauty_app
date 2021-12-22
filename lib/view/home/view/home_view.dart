import '../../../core/extensions/num.dart';
import '../../../core/extensions/padding_insets.dart';
import '../../../core/widget/sizedBox/dynamic_horizontol_space.dart';
import '../../../core/widget/sizedBox/dynamic_veritical_space.dart';
import '../../../product/utils/image_constants.dart';
import '../../../product/utils/svg_constants.dart';
import '../constants/home_constants_mixin.dart';
import '../widgets/best_product_listview.dart';
import '../widgets/concult_problem_card.dart';
import '../widgets/seller_product_card.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get_utils/src/extensions/context_extensions.dart';
import 'package:sizer/sizer.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import '../../../core/base/view/base_view.dart';
import '../controller/home_controller.dart';

class HomeView extends BaseView<HomeController> with HomeConstants {
  HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SlidingUpPanel(
        maxHeight: 100.h,
        minHeight: 80.0.h,
        parallaxEnabled: true,
        parallaxOffset: .5,
        color: context.theme.backgroundColor,
        body: _buildPhotoTitleAndIcons(context),
        panelBuilder: (sc) => _buildPanel(sc, context),
        padding: EdgeInsets.symmetric(horizontal: 6.9.w),
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
        boxShadow: const [],
      ),
      elevation: 0,
      color: context.theme.colorScheme.primary,
    );
  }

  ListView _buildPanel(ScrollController sc, BuildContext context) {
    return ListView(
      controller: sc,
      children: [
        DynamicVerticalSpace(height: 2.5.h),
        _buildSearchTextField(context),
        DynamicVerticalSpace(height: 3.h),
        Text(bestSellerProduct, style: context.textTheme.headline2),
        DynamicVerticalSpace(height: 3.h),
        const SellerProductCard(),
        DynamicVerticalSpace(height: 3.h),
        Text(concultYourProblem, style: context.textTheme.headline2),
        DynamicVerticalSpace(height: 3.h),
        ConcultProblemCard(
          problemTitle: problemTitle,
          problemSubtitle: problemSubtitle,
          getRsvp: getRsvp,
        ),
        DynamicVerticalSpace(height: 3.h),
        Text(bestProduct, style: context.textTheme.headline2),
        DynamicVerticalSpace(height: 3.h),
        BestProductListView(),
      ],
    );
  }

  TextField _buildSearchTextField(BuildContext context) {
    var outlineInputBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(30),
      borderSide: BorderSide.none,
    );
    return TextField(
      decoration: _buildInputDecoration(context, outlineInputBorder),
      style: context.textTheme.headline3!
          .copyWith(color: context.theme.colorScheme.surface),
    );
  }

  InputDecoration _buildInputDecoration(
      BuildContext context, OutlineInputBorder outlineInputBorder) {
    return InputDecoration(
      hintText: search,
      contentPadding: EdgeInsets.symmetric(horizontal: 6.7.w, vertical: 1.7.h),
      suffixIcon: Padding(
        padding: EdgeInsets.symmetric(vertical: 1.5.h, horizontal: 6.7.w),
        child: SvgPicture.asset(SvgConstants.instance.search, height: 3.h),
      ),
      hintStyle: context.textTheme.headline3!
          .copyWith(color: context.theme.colorScheme.surface),
      labelStyle: context.textTheme.headline3!
          .copyWith(color: context.theme.colorScheme.surface),
      hoverColor: context.theme.colorScheme.onBackground,
      focusColor: context.theme.colorScheme.onBackground,
      fillColor: context.theme.colorScheme.onBackground,
      filled: true,
      iconColor: context.theme.colorScheme.onBackground,
      border: outlineInputBorder,
      errorBorder: outlineInputBorder,
      enabledBorder: outlineInputBorder,
      focusedBorder: outlineInputBorder,
      disabledBorder: outlineInputBorder,
      focusedErrorBorder: outlineInputBorder,
    );
  }

  Padding _buildPhotoTitleAndIcons(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 11.8.h),
      child: Stack(
        children: [
          _buildBackgrounPatternSvg(),
          Padding(
            padding: context.paddingLowHorizontal,
            child: _buildProfilePictureTitleAndIcons(context),
          ),
        ],
      ),
    );
  }

  Row _buildProfilePictureTitleAndIcons(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _buildProfilePictureAndTitle(context),
        _buildCartAndNotificationIconButton(context),
      ],
    );
  }

  Row _buildCartAndNotificationIconButton(BuildContext context) {
    return Row(
      children: [
        _buildCartIcon(context),
        DynamicHorizontalSpace(
          width: 6.1.w,
        ),
        _buildNotificaitonIcon(),
      ],
    );
  }

  SvgPicture _buildNotificaitonIcon() {
    return SvgPicture.asset(
      "assets/svgs/notification.svg",
      height: 3.h,
    );
  }

  Stack _buildCartIcon(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        SvgPicture.asset(
          SvgConstants.instance.shoppingCart,
          height: 3.h,
        ),
        Positioned(
          right: -10,
          top: -10,
          child: CircleAvatar(
            radius: 1.1.h,
            backgroundColor: context.theme.highlightColor,
            child: Text(
              '3',
              style: context.textTheme.headline4,
            ),
          ),
        ),
      ],
    );
  }

  Row _buildProfilePictureAndTitle(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 2.5.h,
          backgroundImage: const CachedNetworkImageProvider(
            'https://pbs.twimg.com/profile_images/1472224200396099597/-9PKeq3W_400x400.jpg',
          ),
        ),
        DynamicHorizontalSpace(
          width: 2.1.w,
        ),
        Text(
          "$title, $name",
          style: context.textTheme.headline1,
        ),
      ],
    );
  }

  Padding _buildBackgrounPatternSvg() {
    return Padding(
      padding: EdgeInsets.only(top: 1.6.h),
      child: SvgPicture.asset(
        SvgConstants.instance.pattern,
        height: 23.4.h,
      ),
    );
  }
}
