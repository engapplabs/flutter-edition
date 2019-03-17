import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

double widthMethod(BuildContext context) {
  final width = MediaQuery.of(context).size.width;
  return width;
}

//AppBar da HomeScreen
AppBar homeAppBar() {
  return AppBar(
    title: Text(
      'STARBUCKS',
      style: TextStyle(
        color: Colors.black,
        fontSize: 22,
        fontWeight: FontWeight.bold,
      ),
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
          color: Color(0xFF363636)),
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

BottomNavigationBarItem bottomHomeItem({
  Color activeColor,
  IconData icon,
  Color color,
}) {
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

BoxDecoration positionedContainerDec() {
  return BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(10.0),
    border: Border.all(
      width: 1,
      color: Color(0xFFF0C08F),
    ),
  );
}

class ImageContainer extends StatelessWidget {
  const ImageContainer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(0),
      margin: EdgeInsets.only(bottom: 150),
      child: Image.asset(
        'images/header.png',
      ),
    );
  }
}

class PositionedContainer extends StatelessWidget {
  const PositionedContainer({
    Key key,
    @required this.width,
  }) : super(key: key);

  final double width;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 170,
      left: 0,
      right: 0,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: CardContainer(width: width),
      ),
    );
  }
}

class CardContainer extends StatelessWidget {
  const CardContainer({
    Key key,
    @required this.width,
  }) : super(key: key);

  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}

class CardBalanceAndPrice extends StatelessWidget {
  const CardBalanceAndPrice({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text('Card Balance', style: TextStyle(fontSize: 20)),
        Row(
          children: <Widget>[
            Text('\$'),
            Text('194.20', style: TextStyle(fontSize: 20)),
          ],
        ),
      ],
    );
  }
}

class RowItemsBelowDivider extends StatelessWidget {
  const RowItemsBelowDivider({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Column(
          children: cardItem(image: 'images/wallet.png', text: 'Top Up'),
        ),
        Column(
          children: cardItem(image: 'images/wallet.png', text: 'Rewards'),
        ),
        Column(
          children: cardItem(image: 'images/mobile.png', text: 'Pay'),
        ),
      ],
    );
  }
}

class ExploreContainer extends StatelessWidget {
  const ExploreContainer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
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
    );
  }
}

class ListViewCard extends StatelessWidget {
   ListViewCard({
    Key key,
    @required this.image,
    @required this.title,
  }) : super(key: key);

  String image;
  String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      child: Card(
        child: Column(
          children: <Widget>[
            Image.asset(image,
                height: 60, width: 60),
            Text(title)
          ],
        ),
      ),
    );
  }
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
