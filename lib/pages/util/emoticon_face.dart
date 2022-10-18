import 'package:flutter/material.dart';

class EomticonFace extends StatelessWidget {
  const EomticonFace({this.emoticoFace, super.key});
  final String? emoticoFace;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.blue.shade600,
          borderRadius: BorderRadius.circular(12),
        ),
        padding: EdgeInsets.all(15),
        child: Text(
          emoticoFace ?? '😂',
          style: TextStyle(
            fontSize: 30,
          ),
        ),
      ),
    );
  }
}
