import 'package:flutter/material.dart';
import 'package:flutter_edition/src/Screens/HomeScreen/Utils/HomeUtils.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = widthMethod(context);
    return Scaffold(
      appBar: homeAppBar(),
      bottomNavigationBar: homeBottomBar(),
      body: BodyListContainer(width: width),
    );
  }
}
