import 'package:flutter/material.dart';
import 'package:flutter_edition/src/Screens/HomeScreen/Utils/HomeUtils.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = widthMethod(context);
    return Scaffold(
        appBar: homeAppBar(),
        bottomNavigationBar: homeBottomBar(),
        body: ListView(
          children: <Widget>[
            Stack(
              children: <Widget>[
                ImageContainer(),
                PositionedContainer(width: width),
              ],
            ),
            SizedBox(height: 20),
            ExploreContainer(),
            Container(
              padding: EdgeInsets.only(left: 30),
              height: 120,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Container(
                    width: 120,
                    child: Card(
                      child: Column(
                        children: <Widget>[
                          Image.asset('images/snack.png',
                              height: 60, width: 60),
                          Text('Our Menu')
                        ],
                      ),
                    ),
                  ),
                  ListViewCard(
                    image: 'images/juice.png',
                    title: 'Merchandising',
                  ),
                  Container(
                    width: 120,
                    child: Card(
                      child: Column(
                        children: <Widget>[
                          Image.asset('images/discount.png',
                              height: 60, width: 60),
                          Text('Promotion')
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: 120,
                    child: Card(
                      child: Column(
                        children: <Widget>[
                          Image.asset('images/discount.png',
                              height: 60, width: 60),
                          Text('Promotion')
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ));
  }
}


