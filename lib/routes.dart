import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/pages/onboarding_page.dart';
import 'package:flutter_application_1/screens/dashboard_screen.dart';
import 'package:flutter_application_1/screens/detail_movie_screen.dart';
import 'package:flutter_application_1/screens/provider_screen.dart';
import 'package:flutter_application_1/screens/user_interface.dart';
import 'package:flutter_application_1/screens/classroom_screen.dart';

import 'screens/add_task.dart';
import 'screens/popular_screen.dart';
import 'screens/task_screen.dart';

Map<String,WidgetBuilder> getRoutes(){
  return {
    '/dash' : (BuildContext context) => DashboardScreen(),
    '/task' : (BuildContext context) => TaskScreen(),
    '/onboarding' : (BuildContext context) => OnboardingPage(),
    '/add' : (BuildContext context) => AddTask(),
    '/userinterface1' : (BuildContext context) => MainApp(),
    '/popular' : (BuildContext context) => PopularScreen(),
    '/classroom' : (BuildContext context) => ClassroomScreen(),
    '/detail' : (BuildContext context) => DetailMovieScreen(),
    '/prov' : (BuildContext context) => ProvaiderScreen()
  };
}