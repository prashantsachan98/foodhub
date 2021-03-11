import 'package:flutter/material.dart';
import 'package:food_delivery/components/bottom_nav_bar.dart';
import 'package:food_delivery/screens/home/components/app_bar.dart';
import 'package:food_delivery/screens/home/components/body.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: homeAppBar(context),
      bottomNavigationBar: BottomNavBar(),
      body: Body(),
    );
  }
}
