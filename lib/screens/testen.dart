import 'package:flutter/material.dart';
import 'package:multiplication/utils/variablen.dart';
import 'package:multiplication/utils/widgets.dart';
import 'package:multiplication/screens/math_test.dart';

class Tests extends StatefulWidget {
  Tests({Key? key}) : super(key: key);

  @override
  _TestsState createState() => _TestsState();
}

dynamic countdown = '';

class _TestsState extends State<Tests> {
  @override
  Widget build(BuildContext context) {
    var appBar = AppBar(
      title: Text(translation.Testen),
      leading: GestureDetector(
        child: Icon(Icons.arrow_back),
        onTap: () => Navigator.pushNamed(context, '/home'),
      ),
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
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    SizedBox(height: height/20,),
                    Center(child: Text(translation.Testvorkommen, style: TextStyle(fontSize: height / 32))),
                    SizedBox(height: height/25,),
                    ChooseTest(reihe: 1,),
                    ChooseTest(reihe: 2,),
                    ChooseTest(reihe: 3,),
                    ChooseTest(reihe: 4,),
                    ChooseTest(reihe: 5,),
                    ChooseTest(reihe: 6,),
                    ChooseTest(reihe: 7,),
                    ChooseTest(reihe: 8,),
                    ChooseTest(reihe: 9,),
                    ChooseTest(reihe: 10,),
                  ]
                ),
                CustomTextButton(
                  text: '${translation.Los_gehts} $countdown',
                  onPressed: () async{
                    if(countdown == '') {
                      if (testliste.isNotEmpty) {
                        setState(() {
                          countdown = 3;
                        });
                        await Future.delayed(
                            const Duration(seconds: 1), () async {
                          setState(() {
                            countdown = 2;
                          });
                          await Future.delayed(
                              const Duration(seconds: 1), () async {
                            setState(() {
                              countdown = 1;
                            });
                            await Future.delayed(
                                const Duration(seconds: 1), () {
                              setState(() {
                                countdown = '';
                              });
                              Navigator.pushNamed(context, '/math_test');
                              setState(() {
                                falsch = 0;
                                textcolor = Colors.black;
                                ergebnisliste.clear();
                                ergebnis = '';
                                testfirst = random.nextInt(10) + 1;
                                testsecond =
                                testliste[random.nextInt(testliste.length)];
                                s.start();
                              });
                            });
                          });
                        });
                      }
                    }
                  },
                ),
                SizedBox(height: height / 90)
              ],
            ),
        ),
      ),
    );
  }
}