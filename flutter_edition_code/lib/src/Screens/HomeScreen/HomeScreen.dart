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
                Positioned(
                  top: 170,
                  left: 0,
                  right: 0,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Container(
                      padding: EdgeInsets.all(20),
                      height: 175,
                      width: width,
                      decoration: positionedContainerDec(),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          CardBalanceAndPrice(),
                          Divider(),
                          RowItemsBelowDivider(),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.only(left: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Explore', style: TextStyle(fontSize: 30)),
                  Text(
                    'Check out all our services',
                    style: TextStyle(color: Color(0xFFA1A1A1)),
                  )
                ],
              ),
            ),
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
                  Container(
                    width: 120,
                    child: Card(
                      child: Column(
                        children: <Widget>[
                          Image.asset('images/juice.png',
                              height: 60, width: 60),
                          Text('Merchandising')
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
