import 'package:clone_a_dribbble_design_using_flutter_part1/pages/util/emoticon_face.dart';
import 'package:clone_a_dribbble_design_using_flutter_part1/pages/util/exercise_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade800,
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.access_time_outlined,
                color: Colors.yellow.shade900,
              ),
              label: 'kaka'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.local_movies_outlined,
                color: Colors.red.shade200,
              ),
              label: 'visa'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.g_translate_rounded,
                color: Colors.blue.shade700,
              ),
              label: 'kear'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.safety_check_sharp,
                color: Colors.greenAccent.shade400,
              ),
              // backgroundColor: Colors.green,
              label: "toyota"),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(
                children: [
                  //greetings row
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Hi, visa",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Text(
                            '18 October 2022',
                            style: TextStyle(
                                fontSize: 12, color: Colors.blue.shade200),
                          )
                        ],
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.blue.shade600,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        padding: const EdgeInsets.all(12),
                        child: const Icon(
                          Icons.notifications,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  //search bar
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.blue.shade600,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    padding: EdgeInsets.all(12),
                    child: Row(
                      children: const [
                        Icon(
                          Icons.search,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Search',
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  //how do you feel?

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'How Do You Feel?',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Icon(
                        Icons.more_horiz_rounded,
                        color: Colors.white,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 25,
                  ),

                  // 4 different faces
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      //
                      Column(
                        children: const [
                          EomticonFace(emoticoFace: '😭'),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'SOB',
                            style: TextStyle(color: Colors.white, fontSize: 12),
                          ),
                        ],
                      ),
                      //
                      Column(
                        children: const [
                          EomticonFace(emoticoFace: '😌'),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Relieved',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                      //
                      Column(
                        children: const [
                          EomticonFace(emoticoFace: '😋'),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Yum',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                      //
                      Column(
                        children: const [
                          EomticonFace(emoticoFace: '😅'),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Sweat_Smile',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ],
                    //
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(25),
                color: Colors.grey.shade200,
                child: Center(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Exercises",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.redAccent.shade700),
                          ),
                          Icon(Icons.more_horiz_rounded),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Expanded(
                        child: ListView(
                          children: [
                            ExerciseTile(
                              icon: Icons.favorite_outline_sharp,
                              exercisName: 'ngalisa',
                              numberOfExercises: 23,
                              Color: Colors.green.shade500,
                            ),
                            ExerciseTile(
                              icon: Icons.live_tv_outlined,
                              exercisName: 'ngalisa',
                              numberOfExercises: 23,
                              Color: Colors.blue.shade400,
                            ),
                            ExerciseTile(
                              icon: Icons.library_add_check,
                              exercisName: 'ngalisa',
                              numberOfExercises: 23,
                              Color: Colors.yellow.shade400,
                            ),
                            ExerciseTile(
                              icon: Icons.favorite_outline_sharp,
                              exercisName: 'ngalisa',
                              numberOfExercises: 23,
                            ),
                            ExerciseTile(
                              icon: Icons.live_tv_outlined,
                              exercisName: 'ngalisa',
                              numberOfExercises: 23,
                            ),
                            ExerciseTile(
                              icon: Icons.library_add_check,
                              exercisName: 'ngalisa',
                              numberOfExercises: 23,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
