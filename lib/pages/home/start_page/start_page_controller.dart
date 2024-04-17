import 'package:flutter/cupertino.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:timetap/models/start_app.dart';

class StartPageController extends GetxController {
  TextEditingController yearController = TextEditingController();

  int correctYear = 1552;

  bool answered = false;

  List<EntertainmentContent> entertainmentContents = [
    EntertainmentContent(
        title: "Küldetés a frontvonalon",
        description: "Egy amerikai katona megmentésére indított küldetés második világháborús Európában.",
        image: "images/mission_on_the_frontline.webp",
        rating: 8.6,
        year: 1998
    ),
    EntertainmentContent(
        title: "Iron Crown Strategies IV",
        description: "Stratégiai játék, amely a második világháború idején játszódik.",
        image: "images/ics_iv.webp",
        rating: 9.0,
        year: 2016
    ),
    EntertainmentContent(
        title: "Ostromlott város",
        description: "Orosz lövész és német ellensége közötti csata Sztálingrádban a második világháború alatt.",
        image: "images/besieged_city.webp",
        rating: 7.6,
        year: 2001
    ),
    EntertainmentContent(
        title: "Wir Deutschen",
        description: "Egy történelmi könyv Németország második világháborús éveiről.",
        image: "images/wir_deutschen.webp",
        rating: 8.0,
        year: 2019
    ),
    EntertainmentContent(
        title: "Frontline V",
        description: "Többjátékos akciójáték, amely a második világháború különböző frontjain játszódik.",
        image: "images/frontline_v.webp",
        rating: 7.5,
        year: 2018
    ),
    EntertainmentContent(
        title: "Field of Honor 2",
        description: "FPS, amely a második világháborúban játszódik.",
        image: "images/field_of_honor_2.webp",
        rating: 9.0,
        year: 2005
    )
  ];
}