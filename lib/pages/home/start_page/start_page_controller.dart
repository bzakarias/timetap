import 'package:flutter/cupertino.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:timetap/models/start_app.dart';

class StartPageController extends GetxController {
  TextEditingController yearController = TextEditingController();

  int correctYear = 1552;

  bool answered = false;

  List<EntertainmentContent> entertainmentContents = [
    EntertainmentContent(
        title: "Ryan közlegény megmentése",
        description: "Egy amerikai katona megmentésére indított küldetés második világháborús Európában.",
        image: "images/saving_private_ryan.webp",
        rating: 8.6,
        year: 1998
    ),
    EntertainmentContent(
        title: "Hearts of Iron IV",
        description: "Stratégiai játék, amely a második világháború idején játszódik.",
        image: "images/hoi4.webp",
        rating: 9.0,
        year: 2016
    ),
    EntertainmentContent(
        title: "Ellenség a kapuknál",
        description: "Orosz lövész és német ellensége közötti csata Sztálingrádban a második világháború alatt.",
        image: "images/enemy_at_the_gates.webp",
        rating: 7.6,
        year: 2001
    ),
    EntertainmentContent(
        title: "Mi, németek",
        description: "Egy történelmi könyv Németország második világháborús éveiről.",
        image: "images/wir_deutschen.webp",
        rating: 8.0,
        year: 2019
    ),
    EntertainmentContent(
        title: "Battlefield V",
        description: "Többjátékos akciójáték, amely a második világháború különböző frontjain játszódik.",
        image: "images/battlefield_v.webp",
        rating: 7.5,
        year: 2018
    ),
    EntertainmentContent(
        title: "Call of Duty 2",
        description: "FPS, amely a második világháborúban játszódik.",
        image: "images/call_of_duty_2.webp",
        rating: 9.0,
        year: 2005
    )
  ];
}