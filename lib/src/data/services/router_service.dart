

import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

import '../../general/global/app_global_key.dart';

@singleton
class RouterService {
  //static BuildContext get context => AppGlobalKey.globalKeyRootMaterial.currentContext!;

  // static dynamic pop<T>({T? result}) {
  //   return Navigator.pop(context, result);
  // }

  // routePushReplacementPage
  static dynamic routePushReplacementPage(Widget page, BuildContext context) {

    MaterialPageRoute route = MaterialPageRoute(builder: (context) {
      return page;
    });

    return Navigator.pushReplacement(
      context,
      route,
    );
  }

  // routeGoOnePage
  static dynamic routeGoOnePage(Widget page, BuildContext context) {
    return Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => page),
    );
  }
}
