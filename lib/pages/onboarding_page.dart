import 'package:concentric_transition/concentric_transition.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/dashboard_screen.dart';
import 'package:flutter_application_1/widget/card_task.dart';
import 'package:lottie/lottie.dart';

class OnboardingPage extends StatelessWidget {
  OnboardingPage({Key? key}) : super(key: key);

  final data = [
    CardTaskData(
      title: "Crear Listas de Tareas",
      subtitle:
          "Crear listas de tareas pendientes, ya sean tareas personales, profesionales o proyectos a largo plazo. Priorizar y organizar las tareas según su importancia.",
      image: const AssetImage("assets/img-1.png"),
      backgroundColor: Color.fromARGB(255, 27, 141, 71),
      titleColor: Colors.pink,
      subtitleColor: Colors.white,
      background: LottieBuilder.asset("assets/bg-1.json"),
    ),
    CardTaskData(
      title: "Marca Tareas Completadas",
      subtitle: "Marca las tareas como completadas una vez que se hayan realizado para llevar un registro del progreso.",
      image: const AssetImage("assets/img-2.png"),
      backgroundColor: Color.fromARGB(255, 73, 255, 246),
      titleColor: Colors.purple,
      subtitleColor: const Color.fromRGBO(0, 10, 56, 1),
      background: LottieBuilder.asset("assets/bg-2.json"),
    ),
    CardTaskData(
      title: "Mejora Tu Productividad!!!",
      subtitle: "permite administrar mejor el tiempo y cumplir con tus compromisos y objetivos.",
      image: const AssetImage("assets/img-3.png"),
      backgroundColor: Color.fromARGB(255, 83, 228, 114),
      titleColor: Colors.yellow,
      subtitleColor: Colors.white,
      background: LottieBuilder.asset("assets/bg-3.json"),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ConcentricPageView(
        colors: data.map((e) => e.backgroundColor).toList(),
        itemCount: data.length,
        itemBuilder: (int index) {
          return CardTask(data: data[index]);
        },
        onFinish: () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => DashboardScreen()),
          );
        },
      ),
    );
  }
}