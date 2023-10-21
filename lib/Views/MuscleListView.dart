import 'package:flutter/cupertino.dart';
import 'package:sportfactory2/Model/Arguments.dart';
import 'package:sportfactory2/Model/Muscles.dart';

import '../Widgets/wgMuscle.dart';
import 'SubMusclesView.dart';

class MuscleListScreen extends StatefulWidget {
  const MuscleListScreen({super.key});

  @override
  State<MuscleListScreen> createState() => _MuscleListScreenState();
}

class _MuscleListScreenState extends State<MuscleListScreen> {
  final List<Muscles> muscles = [
    Muscles(1, 'assets/images/chest.png', "Chest"),
    Muscles(2, 'assets/images/biceps.png', "Biceps"),
    Muscles(3, 'assets/images/back.png', "Back"),
    Muscles(4, 'assets/images/triceps.png', "Triceps"),
    Muscles(5, 'assets/images/legs.png', "Legs"),
    Muscles(6, 'assets/images/calf.png', "Calfs"),
    Muscles(7, 'assets/images/shoulders.png', "Shoulders"),
    Muscles(8, 'assets/images/forarms.png', "Forarms"),
    Muscles(9, 'assets/images/abs.png', "Abs"),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: muscles.map((e) {
          return wgMuscle(context, e.idMuscle, e.imgMuscle, e.txtMuscles);
        }).toList(),
      ),
    );
  }
}
