import 'package:flutter/material.dart';
import 'package:flutter_fooder_rich/pages/card_1.dart';
import 'package:flutter_fooder_rich/pages/card_2.dart';
import 'package:flutter_fooder_rich/pages/card_3.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  int _selectedIndex = 0;
  static List<Widget> pages = <Widget>[
    const CardOne(),
    const Card2(),
    const Card3(),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Fooderlich',
          style: Theme.of(context).textTheme.headline6,
        ),
      ),
      body: pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: Theme.of(context).textSelectionTheme.selectionColor,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(
                Icons.food_bank,
                size: 30,
              ),
              label: 'Card'),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.card_giftcard,
              size: 30,
            ),
            label: 'Card2',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.card_membership,
              size: 30,
            ),
            label: 'Card3',
          ),
        ],
      ),
    );
  }
}
