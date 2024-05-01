import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:line_icons/line_icons.dart';
import 'package:timetap/core/routes.dart';
import 'package:timetap/theme/color_theme.dart';

class ProfileWidget extends StatelessWidget {
  const ProfileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
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

          // Fav topic
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
            child: Row(
              children: [
                Expanded(
                    child: Text(
                      'Kedvenc témád',
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
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 10, 20, 20),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.1),
                    spreadRadius: 2,
                    blurRadius: 7,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: Column(
                children: [
                  Container(
                      height: 125,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                        ),
                      ),
                      child: ClipRRect(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                        ),
                        child: Image.asset(
                          'images/eger.png',
                          fit: BoxFit.cover,
                        ),
                      )
                  ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                    child: Row(
                      children: [
                        Expanded(
                            child: Text(
                              'Eger ostroma',
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(
                                color: Colors.black87,
                                fontFamily: 'LatoBold',
                                fontSize: 20,
                                fontWeight: FontWeight.w900,
                              ),
                            ))
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),


          // Trial graduation
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
                                              color: color1,
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
                                                color: color2,
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
                                color: color1,
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

          const SizedBox(height: 100),
        ],
      )
    );
  }
}
