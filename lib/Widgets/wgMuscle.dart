import 'package:flutter/cupertino.dart';
import 'package:sportfactory2/Model/Arguments.dart';

Widget wgMuscle(var context, int id, String image, String text) {
  return GestureDetector(
    onTap: () {
      Navigator.pushNamed(context, '/submuscles',
          arguments: Arguments(id, 'chest'));
    },
    child: Row(
      children: [
        Image.asset(image),
        const SizedBox(width: 10),
        Text(
          text,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        )
      ],
    ),
  );
}
