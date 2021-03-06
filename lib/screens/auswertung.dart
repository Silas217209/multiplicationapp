import 'package:flutter/material.dart';
import 'package:multiplication/utils/variablen.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:multiplication/utils/widgets.dart';

class Auswertung extends StatefulWidget {
  @override
  _AuswertungState createState() => _AuswertungState();
}

class _AuswertungState extends State<Auswertung> {
  List<dynamic> data = [];
  double rating = ((10 - falsch) / 2) < 0 ? 0 : ((10 - falsch) / 2);
  @override
  Widget build(BuildContext context) {
    var appBar = AppBar(
      title: Text(translation.appbar),
      leading: GestureDetector(
        onTap: () => Navigator.popUntil(context, ModalRoute.withName('/test')),
        child: Icon(Icons.arrow_back),
      ),
      actions: [
        PopupMenuButton(
          onSelected: (result) {
            Navigator.pushNamed(context, '/$result');
          },
          itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
            PopupMenuItem(
              child: Row(
                children: <Widget>[
                  Icon(
                    Icons.settings,
                    color: Colors.grey[800],
                  ),
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
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        appBar: appBar,
        body: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.topCenter,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('${translation.aktuelle_zeit}: $current_time s'),
                    Text('${translation.bestzeit}: ${getbest().toStringAsFixed(1)} s'),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment(0.0, 0.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Center(
                            child: Text(
                              getbewertung(rating),
                              style: TextStyle(fontSize: height / 25),
                            ),
                          ),
                        ),
                        SizedBox(height: height / 25),
                        RatingBarIndicator(
                          rating: rating,
                          itemBuilder: (context, index) => Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          itemCount: 5,
                          itemSize: 50.0,
                          direction: Axis.horizontal,
                        ),
                        SizedBox(height: height / 25),
                        Text(
                          getpunkte(rating),
                          style: TextStyle(fontSize: height / 25)
                        ),
                      ]
                    ),
                  ),
                  Column(
                    children: [
                      CustomTextButton(
                          text: translation.statistikenlabel,
                          onPressed: () =>
                              Navigator.pushNamed(context, '/statistiken')),
                      CustomTextButton(
                          text: translation.nochmal,
                          onPressed: () {
                            Navigator.pushNamed(context, '/test');
                            })
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<double?> get getdata {
    List<double?> list = [];
    var value;
    for (int z = 0; z < wertbox.keys.toList().length; z++) {
      value = wertbox.getAt(z);
      list.add(value);
    }
    return list;
  }

  String getpunkte(double rating) {
    String punkte;
    if (rating == 1) {
      punkte = translation.SternErreicht(rating);
    } else {
      punkte = translation.SterneErreicht(rating);
    }
    return punkte;
  }

  String getbewertung(rating) {
    String ausgabe = '';
    if (rating > 4) {
      ausgabe = translation.sterne5;
    } else if (rating > 3) {
      ausgabe = translation.sterne4;
    } else if (rating > 2) {
      ausgabe = translation.sterne3;
    } else if (rating > 1) {
      ausgabe = translation.sterne2;
    } else {
      ausgabe = translation.sterne1;
    }
    return ausgabe.toString();
  }
}

getbest() {
  List<dynamic> list = timebox.values.toList();
  var best = list[0][1];
  for (int j = 0; j < list.length; j++) {
    if(best > list[j][1]) {
      best = list[j][1];
    }
  }
  return best;
}
