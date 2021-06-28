import 'package:flutter/material.dart';
import 'package:multiplication/utils/variablen.dart';
import 'package:multiplication/screens/statistiken/time.dart';
import 'package:multiplication/screens/statistiken/errors.dart';


class StatisikenHome extends StatefulWidget {
  const StatisikenHome({ Key? key }) : super(key: key);

  @override
  _StatisikenHomeState createState() => _StatisikenHomeState();
}

class _StatisikenHomeState extends State<StatisikenHome> {
  final PageController _pageController = PageController();
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    var appBar = AppBar(
      title: Text(translation.statistikenlabel),
      actions: [
        PopupMenuButton(
          onSelected: (result) {
            Navigator.pushNamed(context, '/$result');
          },
          itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
            PopupMenuItem(
              child: Row(
                children: <Widget>[
                  Icon(Icons.settings, color: Colors.grey[800],),
                  Text(translation.einstellungenlabel),
                ],
              ),
              value: 'einstellungen',
            ),
          ],
        ),
      ],
    );
    return Scaffold(
      appBar: appBar,
      body: PageView(
        children: [
          Time(),
          Statistiken()
        ],
        onPageChanged: (page) {
          setState(() {
            _currentIndex = page;
          });
        },
        controller: _pageController,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: onTabTapped,
        selectedItemColor: Colors.blue,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.timer),
            label: translation.zeit
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bar_chart_rounded),
            label: translation.statistikenlabel
          ),
        ],
      ),
    );
  }
  void onTabTapped(int index) {
   setState(() {
     _currentIndex = index;
   });
   _pageController.jumpToPage(index);
 }
}