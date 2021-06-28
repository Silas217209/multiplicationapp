import 'package:flutter/material.dart';
import 'package:multiplication/utils/variablen.dart';
import 'package:multiplication/utils/widgets.dart';
import 'package:multiplication/screens/train.dart';

class ChooseOperation extends StatefulWidget {
  @override
  _ChooseOperationState createState() => _ChooseOperationState();
}

class _ChooseOperationState extends State<ChooseOperation> {
  @override
  Widget build(BuildContext context) {
    var appBar = AppBar(
      title: Text(translation.Uben),
      actions: [
        PopupMenuButton(
          onSelected: (result) {
            Navigator.pushNamed(context, '/$result');
          },
            itemBuilder: (BuildContext context) =>
            <PopupMenuEntry<String>>[
              PopupMenuItem(
                child: Row(
                  children: <Widget>[
                    Icon(Icons.settings, color: Colors.grey[800],),
                    Text(translation.einstellungenlabel),
                  ],
                ),
                value: 'einstellungen',
              ),
              PopupMenuItem(
                child: Row(
                  children: <Widget>[
                    Icon(Icons.bar_chart_rounded, color: Colors.grey[800]),
                    Text(translation.statistikenlabel),
                  ],
                ),
                value: 'statistiken',
              ),
            ],
          ),
      ],
    );
    height = MediaQuery.of(context).size.height - appBar.preferredSize.height - MediaQuery.of(context).padding.top;
    return Scaffold(
      appBar: appBar,
      body: Align(
        alignment: Alignment(0.0, 1.0),
        child: Column(          children: [
            CustomTextButton(
              text: translation.Einmaleins2,
              onPressed: () {
                setState(() {
                  einmaleins = 2;
                  ergebnisliste.clear();
                  ergebnis = '';
                  first = random.nextInt(10) +1;
                  second = einmaleins == 11 ?  random.nextInt(10) +1 : einmaleins;
                  textcolor = Colors.black;
                });
                Navigator.pushNamed(context, '/calculate');
              }
            ),
            CustomTextButton(
              text: translation.Einmaleins3,
              onPressed: () {
                setState(() {
                  einmaleins = 3;
                  ergebnisliste.clear();
                  ergebnis = '';
                  first = random.nextInt(10) +1;
                  second = einmaleins == 11 ?  random.nextInt(10) +1 : einmaleins;
                  textcolor = Colors.black;
                  richtig = 0;
                  falsch = 0;
                });
                Navigator.pushNamed(context, '/calculate');
              }
            ),
            CustomTextButton(
              text: translation.Einmaleins4,
              onPressed: () {
                setState(() {
                  einmaleins = 4;
                  ergebnisliste.clear();
                  ergebnis = '';
                  first = random.nextInt(10) +1;
                  second = einmaleins == 11 ?  random.nextInt(10) +1 : einmaleins;
                  textcolor = Colors.black;
                  richtig = 0;
                  falsch = 0;
                });
                Navigator.pushNamed(context, '/calculate');
              }
            ),
            CustomTextButton(
              text: translation.Einmaleins5,
              onPressed: () {
                setState(() {
                  einmaleins = 5;
                  ergebnisliste.clear();
                  ergebnis = '';
                  first = random.nextInt(10) +1;
                  second = einmaleins == 11 ?  random.nextInt(10) +1 : einmaleins;
                  textcolor = Colors.black;
                  richtig = 0;
                  falsch = 0;
                });
                Navigator.pushNamed(context, '/calculate');
              }
            ),
            CustomTextButton(
              text: translation.Einmaleins6,
              onPressed: () {
                setState(() {
                  einmaleins = 6;
                  ergebnisliste.clear();
                  ergebnis = '';
                  first = random.nextInt(10) +1;
                  second = einmaleins == 11 ?  random.nextInt(10) +1 : einmaleins;
                  textcolor = Colors.black;
                  richtig = 0;
                  falsch = 0;
                });
                Navigator.pushNamed(context, '/calculate');
              }
            ),
            CustomTextButton(
              text: translation.Einmaleins7,
              onPressed: () {
                setState(() {
                  einmaleins = 7;
                  ergebnisliste.clear();
                  ergebnis = '';
                  first = random.nextInt(10) +1;
                  second = einmaleins == 11 ?  random.nextInt(10) +1 : einmaleins;
                  textcolor = Colors.black;
                  richtig = 0;
                  falsch = 0;
                });
                Navigator.pushNamed(context, '/calculate');
              }
            ),
            CustomTextButton(
              text: translation.Einmaleins8,
              onPressed: () {
                setState(() {
                  einmaleins = 8;
                  ergebnisliste.clear();
                  ergebnis = '';
                  first = random.nextInt(10) +1;
                  second = einmaleins == 11 ?  random.nextInt(10) +1 : einmaleins;
                  textcolor = Colors.black;
                  richtig = 0;
                  falsch = 0;
                });
                Navigator.pushNamed(context, '/calculate');
              }
            ),
            CustomTextButton(
              text: translation.Einmaleins9,
              onPressed: () {
                setState(() {
                  einmaleins = 9;
                  ergebnisliste.clear();
                  ergebnis = '';
                  first = random.nextInt(10) +1;
                  second = einmaleins == 11 ?  random.nextInt(10) +1 : einmaleins;
                  textcolor = Colors.black;
                  richtig = 0;
                  falsch = 0;
                });
                Navigator.pushNamed(context, '/calculate');
              }
            ),
            CustomTextButton(
              text: translation.Einmaleins10,
              onPressed: () {
                setState(() {
                  einmaleins = 10;
                  ergebnisliste.clear();
                  ergebnis = '';
                  first = random.nextInt(10) +1;
                  second = einmaleins == 11 ?  random.nextInt(10) +1 : einmaleins;
                  textcolor = Colors.black;
                  richtig = 0;
                  falsch = 0;
                });
                Navigator.pushNamed(context, '/calculate');
              }
            ),
            CustomTextButton(
              text: translation.Einmaleinsalles,
              onPressed: () {
                setState(() {
                  einmaleins = 11;
                  ergebnisliste.clear();
                  ergebnis = '';
                  first = random.nextInt(10) +1;
                  second = einmaleins == 11 ?  random.nextInt(10) +1 : einmaleins;
                  textcolor = Colors.black;
                  richtig = 0;
                  falsch = 0;
                });
                Navigator.pushNamed(context, '/calculate');
              }
            ),

          ]
        ),
      )
    );
  }
}