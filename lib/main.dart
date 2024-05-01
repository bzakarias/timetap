import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:timetap/core/routes.dart';
import 'package:timetap/pages/home/home_view.dart';
import 'package:timetap/pages/home/quiz/quiz_game/quiz_game_widget.dart';

import 'pages/test_graduation/test_graduation_view.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TimeTap',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: HomeView(),
      getPages: [
        GetPage(
          name: Routes.QUIZ_GAME,
          page: () => QuizGameWidget(),
        ),
        GetPage(
          name: Routes.TEST_GRADUATION,
          page: () => const TestGraduationView(),
        ),
        GetPage(
          name: Routes.HOME,
          page: () => HomeView(),
        ),
      ],
    );
  }
}
