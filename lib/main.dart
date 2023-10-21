

import 'package:flutter/material.dart';
import 'package:sportfactory2/Views/LoginView.dart';
import 'package:sportfactory2/Views/MusclesView.dart';
import 'package:sportfactory2/Views/RegisterView.dart';

import 'Views/SubMusclesView.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/login',
    routes: {
      '/login':(context)=>LoginScreen(),
      '/register':(context)=>RegisterScreen(),
      '/muscles':(context)=>MusclesScreen(),
      '/submuscles':(context)=>SubMusclesScreen(),
      '/exercies':(context)=>LoginScreen(),
      '/program':(context)=>LoginScreen(),
      '/calculators':(context)=>LoginScreen(),
      '/settings':(context)=>LoginScreen(),

    },
  ));
}


