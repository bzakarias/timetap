import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:line_icons/line_icons.dart';
import 'package:timetap/core/routes.dart';
import 'package:timetap/pages/home/start_page/start_page_controller.dart';
import 'package:timetap/theme/color_theme.dart';

class StartPageWidget extends StatelessWidget {
  const StartPageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<StartPageController>(
      init: StartPageController(),
      builder: (controller){
        return SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                // Date
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 20, 10, 0),
                  child: Row(
                    children: [
                      Expanded(
                          child: Text(
                            'Április 12.',
                            style: TextStyle(
                              color: color3.withOpacity(0.5),
                              fontSize: 20,
                              fontFamily: 'LatoBold',
                            ),
                          )
                      ),
                    ],
                  ),
                ),

                // Title
                const Padding(
                  padding: EdgeInsets.fromLTRB(10, 0, 10, 20),
                  child: Row(
                    children: [
                      Expanded(
                          child: Text(
                            'A mai napon történt',
                            style: TextStyle(
                              color: color1,
                              fontSize: 32,
                              fontFamily: 'LatoBold',
                            ),
                          )
                      ),
                    ],
                  ),
                ),

                // Event
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Stack(
                        children: [
                          Container(
                            width: 300,
                            height: 350,
                            decoration: BoxDecoration(
                              color: color4,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                  color: color1.withOpacity(0.1),
                                  spreadRadius: 5,
                                  blurRadius: 20,
                                  offset: const Offset(0, 3),
                                ),
                              ],
                            ),
                            child: Column(
                              children: [
                                Container(
                                  height: 200,
                                  width: 300,
                                  decoration: const BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(20),
                                      topRight: Radius.circular(20),
                                    ),
                                  ),
                                  child: ClipRRect(
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(20),
                                      topRight: Radius.circular(20),
                                    ),
                                    child: Image.asset(
                                      'images/event001.webp',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(10, 10, 10, 5),
                                  child: RichText(
                                    text: TextSpan(
                                      children: [
                                        TextSpan(
                                          text: '1861',
                                          style: TextStyle(
                                            color: color3.withOpacity(.5),
                                            fontSize: 14,
                                            fontFamily: 'LatoBold',
                                          ),
                                        ),
                                        const TextSpan(
                                          text: ' Kitört az amerikai polgárháború',
                                          style: TextStyle(
                                            color: color1,
                                            fontSize: 20,
                                            fontFamily: 'LatoBold',
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                const Expanded(
                                    child: Padding(
                                      padding: EdgeInsets.fromLTRB(10, 0, 10, 10),
                                      child: Text(
                                        'A polgárháború az Egyesült Államok történetének egyik legnagyobb és legvéresebb konfliktusa volt. A háború a déli rabszolgatartó államok és az északi rabszolgamentes államok között zajlott 1861 és 1865 között. A háború a déli rabszolgatartó államok függetlenségéért és a rabszolgaság fenntartásáért küzdő Konföderáció és az Egyesült Államok között zajlott. A háború során az Egyesült Államok északi államai, az ún. Unió győzedelmeskedett, és az Egyesült Államok egysége megmaradt.',
                                        style: TextStyle(
                                          color: color3,
                                          fontSize: 14,
                                          fontFamily: 'RobotoRegular',
                                        ),
                                      ),
                                    )
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            bottom: 0,
                            child: Container(
                              height: 100,
                              width: 300,
                              decoration: BoxDecoration(
                                color: color1,
                                borderRadius: const BorderRadius.only(
                                  bottomLeft: Radius.circular(20),
                                  bottomRight: Radius.circular(20),
                                ),
                                gradient: LinearGradient(
                                  begin: Alignment.bottomCenter,
                                  end: Alignment.topCenter,
                                  stops: const [0.15, 1],
                                  colors: [
                                    color4.withOpacity(1),
                                    color4.withOpacity(0.0),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 0,
                            right: 75,
                            left: 75,
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
                              child: Container(
                                width: 100,
                                decoration: BoxDecoration(
                                  color: color1,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: const Padding(
                                    padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                                    child: Center(
                                      child: Text(
                                        'Elolvasom',
                                        style: TextStyle(
                                          color: color4,
                                          fontSize: 14,
                                          fontFamily: 'LatoBold',
                                        ),
                                      ),
                                    )
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(10, 20, 10, 0),
                  child: Row(
                    children: [
                      Expanded(
                          child: Text(
                            'Neked ajánlott',
                            style: TextStyle(
                              color: color1,
                              fontSize: 32,
                              fontFamily: 'LatoBold',
                            ),
                          )
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          'Mert a II. világháború témáról olvastál',
                          style: TextStyle(
                            color: color1.withOpacity(0.5),
                            fontSize: 16,
                            fontFamily: 'OpenSans-SemiBold',
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: controller.entertainmentContents.map((e)=>Padding(
                      padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
                      child: Stack(
                        children: [
                          Container(
                            width: 200,
                            height: 300,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.1),
                                  spreadRadius: 5,
                                  blurRadius: 20,
                                  offset: const Offset(0, 3),
                                ),
                              ],
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Expanded(
                                  child: ClipRRect(
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(20),
                                      topRight: Radius.circular(20),
                                    ),
                                    child: Image.asset(
                                      e.image,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: Text(
                                    e.title,
                                    style: const TextStyle(
                                      color: color1,
                                      fontSize: 20,
                                      fontFamily: 'LatoBold',
                                    ),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                                Flexible(
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 10),
                                    child: Text(
                                      e.description,
                                      style: const TextStyle(
                                        color: Colors.grey,
                                        fontSize: 14,
                                        fontFamily: 'RobotoRegular',
                                      ),
                                      overflow: TextOverflow.fade,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            bottom: 10,
                            left: 10,
                            child: Text(
                              e.year.toString(),
                              style: TextStyle(
                                color: color3.withOpacity(0.5),
                                fontSize: 12,
                                fontFamily: 'LatoBold',
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 10,
                            right: 10,
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  e.rating.toString(),
                                  style: TextStyle(
                                    color: color3.withOpacity(0.5),
                                    fontSize: 14,
                                    fontFamily: 'LatoBold',
                                  ),
                                ),
                                const Icon(
                                  Icons.star,
                                  color: color2,
                                  size: 20,
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    )).toList(),
                  ),
                ),
                Container(
                  color: color2.withOpacity(.25),
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      children: [
                        const Row(
                          children: [
                            Expanded(
                                child: Text(
                                  'Gyors kérdés mára',
                                  style: TextStyle(
                                    color: color1,
                                    fontSize: 24,
                                    fontFamily: 'LatoBold',
                                  ),
                                )
                            ),
                          ],
                        ),
                        const Row(
                          children: [
                            Expanded(
                              child: Text(
                                'Mikor volt ez egri vár ostroma?',
                                style: TextStyle(
                                  color: color3,
                                  fontSize: 16,
                                  fontFamily: 'OpenSans-SemiBold',
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 100,
                          child: Center(
                            child: controller.answered ? (
                                controller.yearController.text == controller.correctYear.toString()) ? Text('Gratulalok!') : Text('Sajnos nem. A helyes válasz ${controller.correctYear}') : Padding(
                              padding: EdgeInsets.fromLTRB(Get.width * .2 , 10, Get.width * .2, 10),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: SizedBox(
                                      height: 50,
                                      child: TextField(
                                        controller: controller.yearController,
                                        onTapOutside: (event) {
                                          FocusManager.instance.primaryFocus?.unfocus();
                                        },
                                        onChanged: (value){
                                          controller.update();
                                        },
                                        keyboardType: const TextInputType.numberWithOptions(decimal: true),
                                        decoration: const InputDecoration(
                                          hintText: 'Évszám',
                                          labelStyle: TextStyle(
                                            fontSize: 14,
                                          ),
                                          disabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: color3,
                                              width: 1,
                                            ),
                                            borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(20),
                                              bottomLeft: Radius.circular(20),
                                            ),
                                          ),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: color3,
                                              width: 1,
                                            ),
                                            borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(20),
                                              bottomLeft: Radius.circular(20),
                                            ),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: color1,
                                                width: 1
                                            ),
                                            borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(20),
                                              bottomLeft: Radius.circular(20),
                                            ),
                                          ),
                                        ),
                                      )
                                    ),
                                  ),
                                  Flexible(
                                    flex: 0,
                                    child: InkWell(
                                      child: Container(
                                        height: 50,
                                        decoration: BoxDecoration(
                                          color: color1.withOpacity(controller.yearController.text.isNotEmpty ? 1 : .25),
                                          borderRadius: const BorderRadius.only(
                                            topRight: Radius.circular(20.0),
                                            bottomRight: Radius.circular(20.0),
                                          ),
                                        ),
                                        child: const Padding(
                                          padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                                          child: Icon(
                                            Icons.send,
                                            color: Colors.white,
                                            size: 16,
                                          ),
                                        ),
                                      ),
                                      onTap: (){
                                        if(controller.yearController.text.isNotEmpty){
                                          controller.answered = true;
                                          controller.update();
                                        }
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ),
                ),
                const SizedBox(height: 20),
                // Trial graduation
                Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              color1.withOpacity(.6),
                              color1.withOpacity(1),
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.1),
                              spreadRadius: 2,
                              blurRadius: 7,
                              offset: const Offset(0, 3),
                            ),
                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: Row(
                            children: [
                              Expanded(
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                                      child: Row(
                                        children: [
                                          Expanded(
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                const Flexible(
                                                  flex: 0,
                                                  child: Text(
                                                    'Próbaérettségi',
                                                    overflow: TextOverflow.ellipsis,
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                      color: color4,
                                                      fontFamily: 'LatoBold',
                                                      fontSize: 20,
                                                      fontWeight: FontWeight.w900,
                                                    ),
                                                  ),
                                                ),
                                                const SizedBox(width: 10),
                                                Container(
                                                  decoration: BoxDecoration(
                                                    color: color2,
                                                    borderRadius: BorderRadius.circular(20),
                                                  ),
                                                  child: const Padding(
                                                    padding: EdgeInsets.fromLTRB(5, 2.5, 5, 2.5),
                                                    child: Text(
                                                      'ÚJ FUNKCIÓ',
                                                      style: TextStyle(
                                                        color: color4,
                                                        fontFamily: 'RobotoRegular',
                                                        fontSize: 12,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    const Text(
                                      'Teszteld a tudásodat a nagy megmérettetés elõtt!',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: color4,
                                        fontFamily: 'RobotoRegular',
                                        fontSize: 14,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(10, 20, 10, 10),
                                      child: Row(
                                        children: [
                                          Expanded(
                                              child: InkWell(
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                    color: color4,
                                                    borderRadius: BorderRadius.circular(20),
                                                  ),
                                                  child: const Padding(
                                                    padding: EdgeInsets.fromLTRB(
                                                      20, 5, 20, 5,
                                                    ),
                                                    child: Text(
                                                      'Kezdés',
                                                      textAlign: TextAlign.center,
                                                      style: TextStyle(
                                                        color: color1,
                                                        fontFamily: 'LatoBold',
                                                        fontSize: 16,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                onTap: (){
                                                  Get.toNamed(Routes.TEST_GRADUATION);
                                                },
                                              )
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              const SizedBox(width: 20),
                              Flexible(
                                flex: 0,
                                child: Container(
                                    width: 75,
                                    height: 75,
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: color2,
                                    ),
                                    child: const Center(
                                      child: Icon(
                                        LineIcons.graduationCap,
                                        size: 35,
                                        color: color4,
                                      ),
                                    )
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 10,
                      top: 10,
                      child: Transform.rotate(
                        angle: -0.785398, // 45 degrees in radians
                        child: Container(
                          color: color5,
                          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                          child: const Text(
                            'PRO',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                // What if
                Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              color2.withOpacity(.6),
                              color2.withOpacity(1),
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.1),
                              spreadRadius: 2,
                              blurRadius: 7,
                              offset: const Offset(0, 3),
                            ),
                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: Row(
                            children: [
                              Expanded(
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                                      child: Row(
                                        children: [
                                          Expanded(
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                const Flexible(
                                                  flex: 0,
                                                  child: Text(
                                                    'Mi lett volna, ha...?',
                                                    overflow: TextOverflow.ellipsis,
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                      color: color4,
                                                      fontFamily: 'LatoBold',
                                                      fontSize: 20,
                                                      fontWeight: FontWeight.w900,
                                                    ),
                                                  ),
                                                ),
                                                const SizedBox(width: 10),
                                                Container(
                                                  decoration: BoxDecoration(
                                                    color: color1,
                                                    borderRadius: BorderRadius.circular(20),
                                                  ),
                                                  child: const Padding(
                                                    padding: EdgeInsets.fromLTRB(5, 2.5, 5, 2.5),
                                                    child: Text(
                                                      'JÁTÉK',
                                                      style: TextStyle(
                                                        color: color4,
                                                        fontFamily: 'RobotoRegular',
                                                        fontSize: 12,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    const Text(
                                      'Alakítsd a történelmet, hozz döntéseket a krízishelyzetekben!',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: color4,
                                        fontFamily: 'RobotoRegular',
                                        fontSize: 14,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(10, 20, 10, 10),
                                      child: Row(
                                        children: [
                                          Expanded(
                                              child: InkWell(
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                    color: color4,
                                                    borderRadius: BorderRadius.circular(20),
                                                  ),
                                                  child: const Padding(
                                                    padding: EdgeInsets.fromLTRB(
                                                      20, 5, 20, 5,
                                                    ),
                                                    child: Text(
                                                      'Kezdés',
                                                      textAlign: TextAlign.center,
                                                      style: TextStyle(
                                                        color: color2,
                                                        fontFamily: 'LatoBold',
                                                        fontSize: 16,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                onTap: (){
                                                  Get.toNamed(Routes.WHAT_IF);
                                                },
                                              )
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              const SizedBox(width: 20),
                              Flexible(
                                flex: 0,
                                child: SizedBox(
                                  width: 75,
                                  height: 75,
                                  child: Image.asset(
                                    'images/what_if_logo.webp',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 10,
                      top: 10,
                      child: Transform.rotate(
                        angle: -0.785398, // 45 degrees in radians
                        child: Container(
                          color: color6,
                          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                          child: const Text(
                            'DEMO',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 100)
              ],
            )
        );
      }
    );
  }
}
