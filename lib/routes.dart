import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/onboarding_page.dart';
import 'package:flutter_application_1/screens/dashboard_screen.dart';
import 'package:flutter_application_1/screens/task_screen.dart';

Map<String,WidgetBuilder> getRoutes(){
  return {
    '/dash' : (BuildContext context) => DashboardScreen(),
    '/task' : (BuildContext context) => TaskScreen(),
    '/onboarding' : (BuildContext context) => OnboardingPage()
  };
}