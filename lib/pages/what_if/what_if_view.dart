import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:line_icons/line_icons.dart';
import 'package:timetap/core/routes.dart';
import 'package:timetap/pages/what_if/what_if_controller.dart';
import 'package:timetap/theme/color_theme.dart';

class WhatIfView extends StatelessWidget {
  const WhatIfView({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<WhatIfController>(
      init: WhatIfController(),
      builder: (controller){
        return Scaffold(
          backgroundColor: color4,
          body: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(height: 75),
                SizedBox(
                  height: 50,
                  child: Row(
                    children: [
                      Flexible(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                          child: InkWell(
                            onTap: Get.back,
                            child: const Icon(
                              LineIcons.arrowLeft,
                              size: 30,
                            ),
                          ),
                        ),
                      ),
                      const Expanded(
                        flex: 0,
                        child: Text(
                          'Kilépés a játékból',
                          style: TextStyle(
                            color: color3,
                            fontFamily: 'RobotoRegular',
                            fontSize: 18,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 10, 10, 20),
                  child: SizedBox(
                    width: Get.width,
                    child: Image.asset(
                      'images/newspaper.webp',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: const TextSpan(
                        children: [
                          TextSpan(
                            text: 'Mi a következő lépés?',
                            style: TextStyle(
                              color: color3,
                              fontFamily: 'SpecialEliteRegular',
                              fontSize: 24,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                        ]
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 10, 20, 40),
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: const TextSpan(
                        children: [
                          TextSpan(
                            text: 'Döntésed hatással lesz a Monarchia jövőjére és sorsára. ',
                            style: TextStyle(
                              color: color3,
                              fontFamily: 'SpecialEliteRegular',
                              fontSize: 16,
                            ),
                          ),
                          TextSpan(
                            text: 'Vigyázz, mert minden választás következményekkel jár!',
                            style: TextStyle(
                              color: color3,
                              fontFamily: 'SpecialEliteRegular',
                              fontSize: 16,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                        ]
                    ),
                  ),
                ),

                // Options
                ...controller.options.entries.map((entry) => Padding(
                    padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                    child: InkWell(
                      child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: const DecorationImage(
                              image: AssetImage('images/game_button_bg.webp'),
                              fit: BoxFit.fill,
                            ),
                            border: Border.all(
                              width: 2,
                              color: color2,
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    entry.key, // Kulcs használata itt (pl. "Diplomáciai nyomás")
                                    style: const TextStyle(
                                      color: color4,
                                      fontFamily: 'SpecialEliteRegular',
                                      fontSize: 16,
                                      fontWeight: FontWeight.w900,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                      ),
                      onTap: () {
                        Get.dialog(
                            Dialog(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: color4,
                                  ),
                                  child: SingleChildScrollView(
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(20, 20, 20, 10),
                                          child: Row(
                                            children: [
                                              Expanded(
                                                child: Text(
                                                  entry.key, // Az aktuális opció neve
                                                  textAlign: TextAlign.center,
                                                  style: const TextStyle(
                                                    color: color3,
                                                    fontFamily: 'SpecialEliteRegular',
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.w900,
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                                          child: Row(
                                            children: [
                                              Expanded(
                                                child: Text(
                                                  entry.value, // Az aktuális opció leírása
                                                  textAlign: TextAlign.center,
                                                  style: const TextStyle(
                                                    color: color3,
                                                    fontFamily: 'SpecialEliteRegular',
                                                    fontSize: 16,
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(20, 10, 20, 20),
                                          child: Row(
                                            children: [
                                              Expanded(
                                                  child: InkWell(
                                                    child: const Text(
                                                      'Vissza',
                                                      textAlign: TextAlign.center,
                                                      style: TextStyle(
                                                        color: color3,
                                                        fontFamily: 'SpecialEliteRegular',
                                                        fontSize: 20,
                                                        fontWeight: FontWeight.w900,
                                                      ),
                                                    ),
                                                    onTap: (){
                                                      Get.back();
                                                    },
                                                  )
                                              ),
                                              const SizedBox(width: 10),
                                              const Expanded(
                                                child: Text(
                                                  'Tovább',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                    color: color3,
                                                    fontFamily: 'SpecialEliteRegular',
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.w900,
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                              ),
                            )
                        );
                      },
                    )
                )).toList(),


                const SizedBox(height: 100),
              ],
            ),
          ),
        );
      }
    );
  }
}
