import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainTimer extends StatefulWidget {
  const MainTimer({super.key});

  @override
  State<MainTimer> createState() => _MainTimerState();
}

class _MainTimerState extends State<MainTimer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('timer'),
    );
  }
}
