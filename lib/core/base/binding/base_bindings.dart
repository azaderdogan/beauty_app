import 'package:beauty_app/view/base_page/controller/base_page_controller.dart';
import 'package:get/get.dart';

class BaseBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BasePageController>(
      () {
        return BasePageController();
      },
    );
  }
}
