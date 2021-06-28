import 'package:flutter/material.dart';
import 'package:multiplication/utils/variablen.dart';
import 'package:hive/hive.dart';

class MathTest extends StatefulWidget {
  @override
  _MathTestState createState() => _MathTestState();
}

int anzahl = 10;
var ergebnis = '';
List ergebnisliste = [];

class _MathTestState extends State<MathTest> {
  @override
  Widget build(BuildContext context) {
    AppBar appBar = AppBar(
      title: Text(translation.Testen),
      automaticallyImplyLeading: false,
    );
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
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
                          Text('$anzahl',
                              style: TextStyle(fontSize: height / 30)),
                          Text(translation.falsch(falsch.toString()),
                              style: TextStyle(fontSize: height / 30)),
                        ],
                      ),
                    ),
                    Container(
                      child: Stack(
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: Text(
                                translation.aufgabe(testfirst.toString(),
                                    testsecond.toString(), ergebnis.toString()),
                                style: TextStyle(
                                  fontSize: 40.0,
                                  color: textcolor,
                                )),
                          ),
                          Align(
                            alignment: Alignment(0.9, 0.0),
                            child: Icon(checkicon, color: iconcolor, size: 50),
                          ),
                        ],
                      ),
                    ),
                    Column(children: <Widget>[
                      Row(
                        children: <Widget>[
                          counterButton(1),
                          SizedBox(
                              width: MediaQuery.of(context).size.width * 0.005),
                          counterButton(2),
                          SizedBox(
                              width: MediaQuery.of(context).size.width * 0.005),
                          counterButton(3),
                        ],
                      ),
                      SizedBox(
                          height: MediaQuery.of(context).size.width * 0.005),
                      Row(
                        children: <Widget>[
                          counterButton(4),
                          SizedBox(
                              width: MediaQuery.of(context).size.width * 0.005),
                          counterButton(5),
                          SizedBox(
                              width: MediaQuery.of(context).size.width * 0.005),
                          counterButton(6),
                        ],
                      ),
                      SizedBox(
                          height: MediaQuery.of(context).size.width * 0.005),
                      Row(
                        children: <Widget>[
                          counterButton(7),
                          SizedBox(
                              width: MediaQuery.of(context).size.width * 0.005),
                          counterButton(8),
                          SizedBox(
                              width: MediaQuery.of(context).size.width * 0.005),
                          counterButton(9),
                        ],
                      ),
                      SizedBox(
                          height: MediaQuery.of(context).size.width * 0.005),
                      Row(
                        children: <Widget>[
                          counterButton(0),
                          SizedBox(
                              width: MediaQuery.of(context).size.width * 0.005),
                          SizedBox(
                            height: MediaQuery.of(context).size.width / 5,
                            width: MediaQuery.of(context).size.width * 0.33,
                            child: TextButton(
                                onPressed: () {
                                  setState(() {
                                    if (ergebnisliste.isNotEmpty) {
                                      ergebnisliste.removeLast();
                                    }
                                    ergebnis = ergebnisliste.join();
                                  });
                                },
                                style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(
                                        Colors.grey[300]),
                                    shape: MaterialStateProperty.all<
                                            RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(18.0),
                                    ))),
                                child: Icon(
                                  Icons.backspace_rounded,
                                  color: Colors.black,
                                )),
                          ),
                          SizedBox(
                              width: MediaQuery.of(context).size.width * 0.005),
                          SizedBox(
                            height: MediaQuery.of(context).size.width / 5,
                            width: MediaQuery.of(context).size.width * 0.33,
                            child: TextButton(
                              onPressed: () => onok(),
                              style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                      Colors.grey[300]),
                                  shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0),
                                  ))),
                              child: Text('OK',
                                  style: TextStyle(
                                      color: Colors.grey[900],
                                      fontSize:
                                          MediaQuery.of(context).size.width /
                                              15)),
                            ),
                          ),
                        ],
                      ),
                    ]),
                  ]))),
    );
  }

  Widget counterButton(buttonText) {
    return SizedBox(
      height: MediaQuery.of(context).size.width / 5,
      width: MediaQuery.of(context).size.width * 0.33,
      child: TextButton(
        onPressed: () {
          if (ergebnisliste.length <= 5) {
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
            ))),
        child: Text(buttonText.toString(),
            style: TextStyle(
                color: Colors.grey[900],
                fontSize: MediaQuery.of(context).size.width / 15)),
      ),
    );
  }

  onok() async {
    wertbox = Hive.box("wert");
    if (testfirst * testsecond == int.parse(ergebnis) && ergebnis.isNotEmpty) {
      setState(() {
        iconcolor = Colors.lightGreen[700];
        checkicon = Icons.check_circle;
      });
      await Future.delayed(const Duration(milliseconds: 500), () {
        setState(() => anzahl--);
        if (anzahl == 0) {
          setState(() {
            anzahl = 10;
            testaufgabenliste.clear();
            iconcolor = null;
            checkicon = null;
            s.stop();
            current_time = (s.elapsedMilliseconds * 1000).toStringAsFixed(1);
          });
          Navigator.pushNamed(context, '/auswertung');
          var stars = ((10 - falsch) / 2) < 0 ? 0 : ((10 - falsch) / 2);
          var time = (s.elapsedMilliseconds / 1000);
          List values = [stars, time, DateTime.now()];
          setState(() {
            s.reset();
          });
          timebox.put((time * 1000000).round(), values);
        } else {
          String keyr = '$testfirst x $testsecond r';
          if (wertbox.containsKey(keyr) && textcolor == Colors.black) {
            int? value = wertbox.get(keyr) + 1;
            wertbox.put(keyr, value);
          } else if (textcolor == Colors.black) {
            int value = 1;
            wertbox.put(keyr, value);
          }
          setState(() {
            testfirst = random.nextInt(10) + 1;
            testsecond = testliste[random.nextInt(testliste.length)];
            while (testaufgabenliste.contains(testfirst)) {
              testfirst = random.nextInt(10) + 1;
              testsecond = testliste[random.nextInt(testliste.length)];
            }
            testaufgabenliste.add(testfirst);
            ergebnis = '';
            ergebnisliste.clear();
            textcolor = Colors.black;
            iconcolor = null;
            checkicon = null;
            textcolor = Colors.black;
          });
        }
      });
    } else {
      setState(() {
        iconcolor = Colors.red[900];
        checkicon = Icons.cancel;
        textcolor = Colors.red[900];
        falsch++;
      });
      await Future.delayed(const Duration(milliseconds: 500), () {
        setState(() {
          ergebnisliste.clear();
          ergebnis = ergebnisliste.join();
        });
      });
      String keyf = '$testfirst x $testsecond f';
      if (wertbox.containsKey(keyf)) {
        int? value = wertbox.get(keyf) + 1;
        wertbox.put(keyf, value);
      } else {
        int value = 1;
        wertbox.put(keyf, value);
      }
    }
    if (anzahl == 0) {
      setState(() {
        anzahl = 10;
        testaufgabenliste.clear();
      });
      Navigator.pushNamed(context, '/auswertung');
    }
  }
}
