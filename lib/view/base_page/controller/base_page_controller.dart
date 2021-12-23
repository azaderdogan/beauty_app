import 'package:beauty_app/view/calendar/view/calendar_view.dart';
import 'package:beauty_app/view/product_detail/view/product_detail_view.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import '../../../core/base/controller/base_controller.dart';
import '../../../core/base/view/base_view.dart';
import '../../home/view/home_view.dart';
import '../../products/view/products_view.dart';

class BasePageController extends BaseController {
  late PageController pageController;
  final _currentIndex = 0.obs;

  int get currentIndex => _currentIndex.value;

  set currentIndex(int currentIndex) {
    _currentIndex.value = currentIndex;
  }

  List<BaseView> pages = <BaseView>[
    HomeView(),
    ProductsView(),
    CalendarView(),
    ProductDetailView()
  ];
  @override
  void onInit() {
    pageController = PageController(initialPage: currentIndex);
    super.onInit();
  }

  void changePage(int index) {
    currentIndex = index;
    pageController.jumpToPage(
      currentIndex,
    );
  }
}
