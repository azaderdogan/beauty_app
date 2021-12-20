import 'package:get/get.dart';
import 'package:vexana/vexana.dart';

import '../../init/cache/locale_manager.dart';
import '../../service/base_network_manager.dart';

abstract class BaseController extends GetxController {
  LocaleManager localeManager = LocaleManager.instance;
  INetworkManager networkService = BaseNetworkService.instance.networkManager;
}
