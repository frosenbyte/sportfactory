import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sportfactory2/Views/CalculatorView.dart';
import 'package:sportfactory2/Views/MainTimerView.dart';
import 'package:sportfactory2/Views/ProgramView.dart';
import 'package:sportfactory2/Views/SettingsView.dart';

import '../Model/Muscles.dart';
import '../Widgets/ProfileNavbar.dart';

import 'MuscleListView.dart';

class MusclesScreen extends StatefulWidget {
  const MusclesScreen({super.key});

  @override
  State<MusclesScreen> createState() => _MusclesScreenState();
}

class _MusclesScreenState extends State<MusclesScreen> {
  final NavigationKey = GlobalKey<CurvedNavigationBarState>();
  int _currentIndex = 2;
  final items = <Widget>[
    const Icon(Icons.list_alt, size: 30),
    const Icon(Icons.timer, size: 30),
    SvgPicture.asset('assets/images/muscles-icon.svg', width: 40),
    const Icon(Icons.calculate_outlined, size: 30),
    const Icon(Icons.settings, size: 30),
  ];

  final List<Widget> screens = [
    const ProgramViewScreen(),
    const MainTimer(),
    const MuscleListScreen(),
    const Calculator(),
    const SettingsScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*extendBody: true,*/
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      drawer: const ProfileNavbar(),
      /*backgroundColor: Colors.blueAccent,*/

      bottomNavigationBar: CurvedNavigationBar(
        key: NavigationKey,
        index: _currentIndex,
        color: Colors.amber,
        backgroundColor: Colors.transparent,
        buttonBackgroundColor: Colors.orange,
        animationCurve: Curves.easeOut,
        /*animationDuration: const Duration(microseconds: 300),*/
        items: items,
        onTap: _changeItem,
      ),
      body: screens.elementAt(_currentIndex),
    );
  }

  void _changeItem(int value) {
    setState(() {
      _currentIndex = value;
    });
  }
}
