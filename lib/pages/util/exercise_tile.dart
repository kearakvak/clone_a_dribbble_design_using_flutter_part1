import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ExerciseTile extends StatelessWidget {
  const ExerciseTile(
      {this.icon,
      required this.exercisName,
      required this.numberOfExercises,
      this.Color,
      super.key});
  final icon;
  final String? exercisName;
  final int? numberOfExercises;
  final Color;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Container(
                      padding: EdgeInsets.all(16),
                      color: Color ?? Colors.orange,
                      child: Icon(
                        icon ?? Icons.favorite,
                        color: Colors.red.shade600,
                      )),
                ),
                const SizedBox(
                  width: 12,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      exercisName ?? 'Speaking Skills',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      // numberOfExercises??  '16 Exercises',
                      '${numberOfExercises}Exercises',
                      style: TextStyle(
                        color: Colors.grey.shade500,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Icon(
              Icons.more_horiz,
            )
          ],
        ),
      ),
    );
  }
}
