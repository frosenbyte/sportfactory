import 'dart:convert';
import 'dart:js_interop';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
/*import 'package:provider/provider.dart';*/
import 'package:sportfactory2/Model/Arguments.dart';
import '../Widgets/wgMuscle.dart';
import '../Model/Muscles.dart';
import '../Model/Arguments.dart';

class SubMusclesScreen extends StatefulWidget {
  const SubMusclesScreen({super.key});

  @override
  State<SubMusclesScreen> createState() => _SubMusclesScreenState();
}

//load all from model
final List<Muscles> chests = [
  Muscles(1, 'assets/images/upperchest.png', "Upper Chest"),
  Muscles(2, 'assets/images/midchest.png', "Mid chest"),
  Muscles(3, 'assets/images/lowerchest.png', "Lower chest"),
];

final List<Muscles> arms = [
  Muscles(1, 'assets/images/biceps-long.png', "Long head"),
  Muscles(2, 'assets/images/biceps-short.png', "short head"),
  Muscles(3, 'assets/images/biceps-brachialis.png', "Brachialis"),
];

final List<Muscles> back = [
  Muscles(1, 'assets/images/back-traps.png', "Traps"),
  Muscles(2, 'assets/images/back-teres-major.png', "Teres Major"),
  Muscles(3, 'assets/images/back-lats.png', "Lats"),
  Muscles(4, 'assets/images/back-erector-spiner.png', "Erector Spiner"),
];

class _SubMusclesScreenState extends State<SubMusclesScreen> {
  @override
  Widget build(BuildContext context) {
    final Arguments args =
        ModalRoute.of(context)?.settings.arguments as Arguments;

    return Scaffold(
      appBar: AppBar(
        title: Text(args.id.toString()),
      ),
      body: SingleChildScrollView(
          child: (() {
        print(args.id);
        if (args.id == 1) {
          return Column(
              children: chests.map((e) {
            return wgMuscle(context, e.idMuscle, e.imgMuscle, e.txtMuscles);
          }).toList());
        } else if (args.id == 2) {
          return Column(
              children: arms.map((e) {
            return wgMuscle(context, e.idMuscle, e.imgMuscle, e.txtMuscles);
          }).toList());
        } else {
          return Column(
              children: chests.map((e) {
            return wgMuscle(context, e.idMuscle, e.imgMuscle, e.txtMuscles);
          }).toList());
        }
      }())),
    );
  }
}

void openChest() {}
