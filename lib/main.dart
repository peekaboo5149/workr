import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:workr/data/local/task_dao.dart';
import 'package:workr/data/local/task_database.dart';
import 'package:workr/presentation/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  final AppDatabase _appDatabase = TaskDAO();
  @override
  Widget build(BuildContext context) {
    return Provider<AppDatabase>.value(
      value: _appDatabase,
      child: MaterialApp(
        title: 'workr',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.green,
        ),
        home: HomePage(),
      ),
    );
  }
}
