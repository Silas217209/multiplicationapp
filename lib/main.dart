import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';

import 'package:multiplication/screens/auswertung.dart';
import 'package:multiplication/screens/chooseoperation.dart';
import 'package:multiplication/screens/math_test.dart';
import 'package:multiplication/screens/testen.dart';
import 'package:multiplication/screens/train.dart';
import 'package:multiplication/screens/statistiken/statistiken.dart';
import 'package:multiplication/screens/einstellungen/einstellunen.dart';
import 'package:multiplication/utils/variablen.dart';
import 'package:multiplication/utils/widgets.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  Directory document = await getApplicationDocumentsDirectory();
  Hive.init(document.path);
  await Hive.openBox("wert");
  await Hive.openBox("time");
  await Hive.openBox("settings");

  SystemChrome.setPreferredOrientations(
    [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown])
    .then((_){
      runApp(MyApp());
    }
  );
}
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Multiplication',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
      routes: {
        '/home': (context) => MyHomePage(),
        '/choose_operation': (context) => ChooseOperation(),
        '/calculate': (context) => Calculator(),
        '/test': (context) => Tests(),
        '/math_test': (context) => MathTest(),
        '/auswertung': (context) => Auswertung(),
        '/statistiken': (context) => StatisikenHome(),
        '/einstellungen': (context) => Einstellungen(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var appBar = AppBar(
      title: Text(translation.appbar),
      automaticallyImplyLeading: false,
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
        body: Container(
          child: Align(
          alignment: Alignment(0.0, 0.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: height / 5),
              Container(
                height: height / 4,
                width: height / 4,
                child: Image.asset('assets/images/multiplication_logo.png')
              ),
              SizedBox(height: height / 3),
              CustomTextButton(
                text: translation.Uben,
                onPressed: () {Navigator.pushNamed(context, '/choose_operation');},
              ),
              CustomTextButton(
                text: translation.Testen,
                onPressed: () {Navigator.pushNamed(context, '/test');},
              )
            ],
          ),
        )
      ),
    );
  }
}