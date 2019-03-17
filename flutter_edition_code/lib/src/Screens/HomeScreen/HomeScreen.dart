import 'package:flutter/material.dart';
import 'package:flutter_edition/src/Screens/HomeScreen/Utils/HomeUtils.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: homeAppBar(),
        bottomNavigationBar: homeBottomBar(),
        body: ListView(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(0),
                  margin: EdgeInsets.only(bottom: 150),
                  child: Image.asset(
                    'images/header.png',
                  ),
                ),
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
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.0),
                        border: Border.all(
                          width: 1,
                          color: Color(0xFFF0C08F),
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                'Card Balance',
                                style: TextStyle(fontSize: 20),
                              ),
                              Row(
                                children: <Widget>[
                                  Text('\$'),
                                  Text(
                                    '194.20',
                                    style: TextStyle(fontSize: 20),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Divider(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Column(
                                children: cardItem(
                                    image: 'images/wallet.png', text: 'Top Up'),
                              ),
                              Column(
                                children: cardItem(
                                    image: 'images/wallet.png',
                                    text: 'Rewards'),
                              ),
                              Column(
                                children: cardItem(
                                    image: 'images/mobile.png', text: 'Pay'),
                              ),
                            ],
                          ),
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
