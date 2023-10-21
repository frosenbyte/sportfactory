import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileNavbar extends StatefulWidget {
  const ProfileNavbar({super.key});

  @override
  State<ProfileNavbar> createState() => _ProfileNavbarState();
}

class _ProfileNavbarState extends State<ProfileNavbar> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(accountName: Text('user'), accountEmail: Text('email@gmail.com'),
            currentAccountPicture: ClipOval(
                child: Image.asset('assets/images/chest.png', fit:BoxFit.cover),

            ),
          ),

        ],
      )
    );
  }
}
