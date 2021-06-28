import 'package:flutter/material.dart';
import 'package:multiplication/utils/variablen.dart';

class Calculator extends StatefulWidget {
  @override
  _CalculatorState createState() => _CalculatorState();
}


late var ergebnis;

List ergebnisliste =  [];
List aufgabenliste = [];
int aufgabenfehler = 0;

class _CalculatorState extends State<Calculator> {
  @override
  Widget build(BuildContext context) {
    var appBar = AppBar(
      title: Text(translation.uben),
    );
    return Scaffold(
      appBar: appBar,
      body: Align(
        alignment: Alignment(0.0, 1.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(translation.richtig(richtig.toString()), style: TextStyle(fontSize: height / 30)),
                  Text(translation.falsch(falsch.toString()), style: TextStyle(fontSize: height / 30)),
                ],
              ),
            ),
            Container(
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      translation.aufgabe(first.toString(), second.toString(), ergebnis.toString()),
                      style: TextStyle(
                        fontSize: 40.0,
                        color: textcolor,
                      )
                    ),
                  ),
                  Align(
                    alignment: Alignment(0.9, 0.0),
                    child: Icon(checkicon, color: iconcolor, size: 50),
                  ),
                ],
              ),
            ),
            Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    counterButton(1),
                    SizedBox(width: MediaQuery.of(context).size.width * 0.005),
                    counterButton(2),
                    SizedBox(width: MediaQuery.of(context).size.width * 0.005),
                    counterButton(3),
                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.width * 0.005),
                Row(
                  children: <Widget>[
                    counterButton(4),
                    SizedBox(width: MediaQuery.of(context).size.width * 0.005),
                    counterButton(5),
                    SizedBox(width: MediaQuery.of(context).size.width * 0.005),
                    counterButton(6),
                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.width * 0.005),
                Row(
                  children: <Widget>[
                    counterButton(7),
                    SizedBox(width: MediaQuery.of(context).size.width * 0.005),
                    counterButton(8),
                    SizedBox(width: MediaQuery.of(context).size.width * 0.005),
                    counterButton(9),
                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.width * 0.005),
                Row(
                  children: <Widget>[
                    counterButton(0),
                    SizedBox(width: MediaQuery.of(context).size.width * 0.005),
                    SizedBox(
                      height: MediaQuery.of(context).size.width / 5,
                      width: MediaQuery.of(context).size.width * 0.33,
                      child: TextButton(
                        onPressed: () {
                          setState(() {
                            if(ergebnisliste.isNotEmpty){
                              ergebnisliste.removeLast();
                            } 
                            ergebnis = ergebnisliste.join();
                          });
                        },
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(Colors.grey[300]),
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                              )
                            )
                          ),
                        child: Icon(Icons.backspace_rounded, color: Colors.black,)
                      ),
                    ),
                    SizedBox(width: MediaQuery.of(context).size.width * 0.005),
                    SizedBox(
                      height: MediaQuery.of(context).size.width / 5,
                      width: MediaQuery.of(context).size.width * 0.33,
                      child: TextButton(
                          onPressed: () async {
                          if(first*second! == int.parse(ergebnis)){
                            if(aufgabenfehler != 2) {
                              setState(() {
                                iconcolor = Colors.lightGreen[700];
                                checkicon = Icons.check_circle;
                                textcolor = Colors.black;
                              });
                            }
                            while(aufgabenliste.length > 4) {
                              setState(() {
                                aufgabenliste.removeAt(0);
                              });
                            }
                            int _first = random.nextInt(10) +1;
                            while(aufgabenliste.contains(_first)) {
                              _first = random.nextInt(10) +1;
                            }
                            await Future.delayed(const Duration(milliseconds: 500), () {
                              setState(() {
                                iconcolor = null;
                                checkicon = null;
                                first = _first;
                                aufgabenliste.add(_first);
                                second = einmaleins == 11 ?  random.nextInt(10) +1 : einmaleins;
                                ergebnis = '';
                                ergebnisliste.clear();
                                textcolor = Colors.black;
                                if(aufgabenfehler == 0) {
                                  richtig ++;
                                }
                                aufgabenfehler = 0;
                              });
                            });
                          } else{
                            if(aufgabenfehler == 1) {
                              await Future.delayed(const Duration(milliseconds: 500), () {
                                setState(() {
                                  iconcolor = Colors.blue;
                                  checkicon = Icons.check_circle;
                                  textcolor = Colors.blue;
                                  ergebnis = (first*second!).toString();
                                });
                              });
                            }
                            else {
                              setState(() {
                                falsch++;
                                iconcolor = Colors.red[900];
                                checkicon = Icons.cancel;
                                textcolor = Colors.red[900];
                              });
                              await Future.delayed(const Duration(milliseconds: 500), () {
                                setState(() {
                                  ergebnisliste.clear();
                                  ergebnis = ergebnisliste.join();
                                  aufgabenfehler ++;
                                });
                              });
                            }
                          }
                        },
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(Colors.grey[300]),
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                            )
                          )
                        ),
                        child: Text('OK',
                          style: TextStyle(
                            color: Colors.grey[900],
                            fontSize: MediaQuery.of(context).size.width / 15
                          )
                        ),
                      ),
                    ),
                  ],
                ),
              ]
            ),
          ]
        )
      )
    );
  } 
  Widget counterButton(buttonText) {
    return SizedBox(
      height: MediaQuery.of(context).size.width / 5,
      width: MediaQuery.of(context).size.width * 0.33,
      child: TextButton(
        onPressed: () {
          if(ergebnisliste.length <= 5) {
            setState(() {
              ergebnisliste.add(buttonText);
              ergebnis = ergebnisliste.join();
            });
          }
        },
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.grey[300]),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18.0),
            )
          )
        ),
        child: Text(buttonText.toString(),
          style: TextStyle(
            color: Colors.grey[900],
            fontSize: MediaQuery.of(context).size.width / 15
          )
        ),
      ),
    );
  }
}

