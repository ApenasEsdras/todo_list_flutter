import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:todo_list_flutter/app/core/database/sqlite_connection_factory.dart';

class SqliteAdmConnection with WidgetsBindingObserver {
  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    final connetion = SqliteConnectionFactory();

    switch (state) {
      case AppLifecycleState.hidden:
        break;
      case AppLifecycleState.inactive:
      case AppLifecycleState.paused:
      case AppLifecycleState.detached:
      case AppLifecycleState.resumed:
        connetion.clouseConneciton();
        break;
    }
    super.didChangeAppLifecycleState(state);
  }
}
