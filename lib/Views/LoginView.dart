import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
           child: Center(
             child: Column(
               children: [
                 const SizedBox(height: 100),
                 ElevatedButton(onPressed: (){
                   Navigator.pushNamed((context), '/muscles');
                 }, child: Text('Login'))
               ],
             ),
           ),
      ),
    );
  }
}
