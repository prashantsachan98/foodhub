import 'package:flutter/material.dart';
//import 'package:food_delivery/constants.dart';
import 'package:food_delivery/screens/details/components/app_bar.dart';
import 'package:food_delivery/screens/details/components/body.dart';

class DetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: detailsAppBar(context),
      body: Body(),
    );
  }
}
