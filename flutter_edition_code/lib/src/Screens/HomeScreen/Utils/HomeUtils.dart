import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

//AppBar da HomeScreen
AppBar homeAppBar() {
  return AppBar(
    title: Text(
      'STARBUCKS',
      style: TextStyle(
          color: Colors.black, fontSize: 22, fontWeight: FontWeight.bold),
    ),
    elevation: 0.0,
    centerTitle: true,
    backgroundColor: Colors.white,
  );
}

//BottomNavigationBar da HomeScreen
BottomNavigationBar homeBottomBar() {
  return BottomNavigationBar(
    type: BottomNavigationBarType.fixed,
    items: [
      bottomHomeItem(
        activeColor: Color(0xFF459C6D),
        icon: FontAwesomeIcons.home,
        color: Color(0xFF363636)
      ),
      bottomItem(
        icon: FontAwesomeIcons.coffee,
        color: Color(0xFF363636),
      ),
      bottomItem(
        icon: FontAwesomeIcons.userAlt,
        color: Color(0xFF363636),
      ),
      bottomItem(
        icon: FontAwesomeIcons.ellipsisH,
        color: Color(0xFF363636),
      ),
    ],
  );
}

BottomNavigationBarItem bottomHomeItem({Color activeColor, IconData icon, Color color}) {
  return BottomNavigationBarItem(
      activeIcon: Icon(
        icon,
        color: activeColor,
      ),
      icon: Icon(
        icon,
        color: color,
      ),
      title: Container());
}

BottomNavigationBarItem bottomItem({IconData icon, Color color}) {
  return BottomNavigationBarItem(
      icon: Icon(
        icon,
        color: color,
      ),
      title: Container());
}

List<Widget> cardItem({String image, String text}) {
  return <Widget>[
    Image.asset(
      image,
      height: 60,
      width: 60,
    ),
    Text(text)
  ];
}
