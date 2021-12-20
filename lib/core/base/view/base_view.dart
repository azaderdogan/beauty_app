import 'package:flutter/material.dart';
import 'package:get/get_instance/src/get_instance.dart';

import '../controller/base_controller.dart';

abstract class BaseView<T extends BaseController> extends StatelessWidget {
  const BaseView({Key? key}) : super(key: key);

  final String? tag = null;

  T get controller => GetInstance().find<T>(tag: tag);

  @override
  Widget build(BuildContext context);
}
