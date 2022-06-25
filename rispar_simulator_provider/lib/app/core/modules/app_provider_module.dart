import 'package:flutter/material.dart';
import 'package:provider/single_child_widget.dart';

import 'app_provider_page.dart';

abstract class AppProviderModule {
  final Map<String, WidgetBuilder> _routers;
  final List<SingleChildWidget>? _bindings;

  AppProviderModule({
    List<SingleChildWidget>? bindings,
    required Map<String, WidgetBuilder> routers,
  })  : _routers = routers,
        _bindings = bindings;

  Map<String, WidgetBuilder> get routers {
    return _routers.map(
      (key, pageBuilder) => MapEntry(
        key,
        (_) => AppProviderPage(
          bindings: _bindings,
          page: pageBuilder,
        ),
      ),
    );
  }

  Widget getPage(String path, BuildContext context) {
    final widgetBuilder = _routers[path];
    if (widgetBuilder != null) {
      return AppProviderPage(
        page: widgetBuilder,
        bindings: _bindings,
      );
    }
    throw Exception();
  }
}
