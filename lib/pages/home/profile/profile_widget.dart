import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:timetap/theme/color_theme.dart';

class ProfileWidget extends StatelessWidget {
  const ProfileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 10, 20, 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Flexible(
                flex: 0,
                child: Stack(
                  children: [
                    Container(
                      height: 120,
                      width: 120,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: LinearGradient(
                          colors: [
                            color2,
                            color2.withOpacity(.25),
                          ],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                      ),
                      child: Center(
                        child: Container(
                            width: 105,
                            height: 105,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: color4,
                            ),
                            child: Center(
                              child: Container(
                                width: 100,
                                height: 100,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: color1,
                                ),
                                child: ClipOval(
                                  child: Image.asset(
                                    'images/profile.webp',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            )
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 5,
                      right: 5,
                      child: Container(
                        width: 30,
                        height: 30,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: color5,
                        ),
                        child: const Center(
                          child: Icon(
                            LineIcons.camera,
                            size: 15,
                            color: color4,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Flexible(
                flex: 0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Zakariás Bálint',
                      style: TextStyle(
                        fontSize: 24,
                        color: color1,
                        fontFamily: 'LatoBold',
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
                      child: Container(
                        decoration: BoxDecoration(
                          color: color2.withOpacity(.25),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.fromLTRB(10, 2.5, 10, 2.5),
                          child: Row(
                            children: [
                              Icon(
                                Icons.shield,
                                color: color2,
                                size: 15,
                              ),
                              SizedBox(width: 10),
                              Text(
                                'Forradalmár',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: color2,
                                  fontFamily: 'RobotoRegular',
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Icon(
                          LineIcons.university,
                          color: color1.withOpacity(.5),
                        ),
                        const SizedBox(width: 10),
                        Text(
                          'Janus Pannonius Gimnázium',
                          style: TextStyle(
                            fontSize: 12,
                            color: color1.withOpacity(.5),
                            fontFamily: 'RobotoRegular',
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          LineIcons.ruler,
                          color: color1.withOpacity(.5),
                        ),
                        const SizedBox(width: 10),
                        Text(
                          '11/B',
                          style: TextStyle(
                            fontSize: 12,
                            color: color1.withOpacity(.5),
                            fontFamily: 'RobotoRegular',
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),

        Padding(
          padding: const EdgeInsets.fromLTRB(20, 10, 20, 20),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(
                colors: [
                  color1.withOpacity(.85),
                  color1.withOpacity(1),
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                children: [
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
                            LineIcons.crown,
                            size: 35,
                            color: color4,
                          ),
                        )
                    ),
                  ),
                  const SizedBox(width: 20),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Osztályod célja',
                          style: TextStyle(
                            fontSize: 18,
                            color: color4,
                            fontFamily: 'RobotoRegular',
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
                          child: Container(
                            width: double.infinity,
                            height: 15,
                            decoration: BoxDecoration(
                              color: color4,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                width: 150,
                                height: 150,
                                decoration: BoxDecoration(
                                  color: color5,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                            ),
                          ),
                        ),

                        const Text(
                          'Május 18-ig megtanulni: II. világháború',
                          style: TextStyle(
                            fontSize: 12,
                            color: color5,
                            fontFamily: 'RobotoRegular',
                          ),
                        ),
                      ],
                    ),

                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
