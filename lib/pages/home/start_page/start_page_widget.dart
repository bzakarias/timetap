import 'package:flutter/material.dart';
import 'package:timetap/theme/color_theme.dart';

class StartPageWidget extends StatelessWidget {
  const StartPageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
      child: Column(
        children: [
          // Date
          Row(
            children: [
              Expanded(
                  child: Text(
                    'Április 12.',
                    style: TextStyle(
                      color: color1.withOpacity(0.5),
                      fontSize: 20,
                      fontFamily: 'LatoBold',
                    ),
                  )
              ),
            ],
          ),

          // Title
          const Row(
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

          const SizedBox(height: 20),

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
        ],
      ),
    );
  }
}
