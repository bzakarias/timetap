import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:timetap/pages/test_graduation/test_graduation_controller.dart';
import 'package:timetap/theme/color_theme.dart';

class TestGraduationView extends StatelessWidget {
  const TestGraduationView({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<TestGraduationController>(
      init: TestGraduationController(),
      builder: (controller){
        return Scaffold(
          appBar: AppBar(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                RichText(
                  text: const TextSpan(
                    children: [
                      TextSpan(
                        text: 'Név: ',
                        style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontFamily: 'TinosRegular'
                        ),
                      ),
                      TextSpan(
                        text: 'Zakariás Bálint',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontFamily: 'TinosRegular',
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 5),
                RichText(
                  text: const TextSpan(
                    children: [
                      TextSpan(
                        text: 'Osztály: ',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontFamily: 'TinosRegular'
                        ),
                      ),
                      TextSpan(
                        text: '12.B',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontFamily: 'TinosRegular',
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          body: (controller.pageIndex == 0) ? Center(
            child: SizedBox(
              height: Get.height * .75,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: Get.width * .1),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Row(
                      children: [
                        Expanded(
                          child: Text(
                            'TÖRTÉNELEM',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 24,
                                fontFamily: 'TinosBold',
                                fontWeight: FontWeight.bold
                            ),
                          ),
                        ),
                      ],
                    ),
                    const Row(
                      children: [
                        Expanded(
                          child: Text(
                            'KÖZÉPSZINTŰ ÍRÁSBELI VIZSGA',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 24,
                                fontFamily: 'TinosBold',
                                fontWeight: FontWeight.bold
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Flexible(
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.black,
                                  width: 1,
                                ),
                                color: color3.withOpacity(.5),
                              ),
                              child: const Padding(
                                padding: EdgeInsets.fromLTRB(15, 2.5, 15, 2.55),
                                child: Text(
                                  'próba',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontFamily: 'TinosBold',
                                      fontWeight: FontWeight.bold
                                  ),
                                ),
                              ),
                            )
                        ),
                      ],
                    ),
                    const Row(
                      children: [
                        Expanded(
                          child: Text(
                            '2024. április 12. 17:49',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 24,
                                fontFamily: 'TinosBold',
                                fontWeight: FontWeight.bold
                            ),
                          ),
                        ),
                      ],
                    ),
                    const Row(
                      children: [
                        Expanded(
                          child: Text(
                            'Időtartam: 180 perc',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontFamily: 'TinosRegular'
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: InkWell(
                            child: Container(
                              decoration: BoxDecoration(
                                color: color1,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: const Padding(
                                padding: EdgeInsets.fromLTRB(20, 5, 20, 5),
                                child: Center(
                                  child: Text(
                                      'Kezdés',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 24,
                                        fontFamily: 'LatoBold',
                                      )
                                  ),
                                ),
                              ),
                            ),
                            onTap: (){
                              controller.pageIndex = 1;
                              controller.update();
                            },
                          )
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ) : Center(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                    child: Row(
                      children: [
                        Expanded(
                            child: Text(
                                '1. A feladat a magyar honfoglalással kapcsolatos.',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'TinosBold',
                                )
                            )
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                    child: Row(
                      children: [
                        Expanded(
                            child: RichText(
                              text: const TextSpan(
                                children: [
                                  TextSpan(
                                      text: 'Oldja meg a feladatokat a források és ismeretei segítségével! ',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'TinosBold',
                                      )
                                  ),
                                  TextSpan(
                                      text: '(Elemenként 1 pont.)',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontFamily: 'TinosRegular',
                                      )
                                  )
                                ],
                              ),
                            )
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                    child: Row(
                      children: [
                        Expanded(
                            child: RichText(
                              text: const TextSpan(
                                children: [
                                  TextSpan(
                                      text: 'A honfoglalás mely alapvető fogalmait jelenítik meg a táblázatban szereplő szövegrészletek? Írja a fogalmakat a táblázat megfelelő mezőibe! A megadott fogalmak közül válasszon! ',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'TinosBold',
                                      )
                                  ),
                                  TextSpan(
                                      text: 'Egy mezőbe egy fogalmat írjon! Egy fogalom kimarad.',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontFamily: 'TinosItalic',
                                      )
                                  )
                                ],
                              ),
                            )
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                    child: Row(
                      children: [
                        Expanded(
                            child: RichText(
                              text: const TextSpan(
                                children: [
                                  TextSpan(
                                      text: 'Fogalmak:',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'TinosBold',
                                        decoration: TextDecoration.underline,
                                      ),
                                  ),
                                  TextSpan(
                                      text: ' Levediák, Vereckei hágó, törzsszövetség, 7 magyar törzs',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontFamily: 'TinosItalic',
                                      )
                                  )
                                ],
                              ),
                            )
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ),
        );
      }
    );
  }
}
