import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '/app/core/app_widget.dart';
import '/app/core/app_module.dart';

void main() => runApp(ModularApp(
      module: AppModule(),
      child: AppWidget(),
    ));
