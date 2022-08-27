import 'package:flutter/material.dart';
import 'package:studingflu/app_controller.dart';
import 'package:studingflu/home_page.dart';
import 'package:studingflu/login_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: AppController.instance,
        builder: (context, child) {
          return MaterialApp(
            initialRoute: '/',
            routes: {
              '/':(context) => LoginPage(),
              '/home':(context) => HomePage()
            },
            theme: ThemeData(
              primarySwatch: Colors.red,
              brightness: AppController.instance.isDartTheme
                  ? Brightness.dark
                  : Brightness.light,
            ),
          );
        });
  }
}
