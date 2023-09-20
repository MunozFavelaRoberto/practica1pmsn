import 'package:flutter/material.dart';
import 'package:flutter_application_1/assets/styles_app.dart';
import 'package:flutter_application_1/routes.dart';
import 'package:flutter_application_1/screens/login_screen.dart';
import 'package:flutter_application_1/assets/global_values.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  ValueListenableBuilder(
      valueListenable: GlobalValues.flagTheme,
      builder: (context, value, _) {
        return MaterialApp(
          home: const LoginScreen(),
          routes: getRoutes(),
          theme: value ? StylesApp.darkTheme(context) : StylesApp.lightTheme(context)
          /*routes: {
            '/dash' : (BuildContext context) => LoginScreen()
          },*/
        );
      }
    );
  }
}