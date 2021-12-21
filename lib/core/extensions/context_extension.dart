import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

extension ContextExtension on BuildContext {
  MaterialColor get randomColor => Colors.primaries[Random().nextInt(17)];
}
