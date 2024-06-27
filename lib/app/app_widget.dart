import 'package:flutter/material.dart';
import 'package:todo_list_flutter/app/core/database/sqlite_adm_connection.dart';

import 'modules/splash/splash_page.dart';

class AppWidget extends StatefulWidget {
  const AppWidget({super.key});

  @override
  State<AppWidget> createState() => _AppWidgetState();
}

class _AppWidgetState extends State<AppWidget> {
  final sqliteAdmConnection = SqliteAdmConnection();
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(sqliteAdmConnection);
  }

  @override
  void dispose() {
    super.dispose();
    WidgetsBinding.instance.removeObserver(sqliteAdmConnection);
  }

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'ToDo List',
      home: SplashPage(),
    );
  }
}
