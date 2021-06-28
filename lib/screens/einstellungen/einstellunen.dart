import 'package:flutter/material.dart';
import 'package:multiplication/utils/variablen.dart';
import 'package:multiplication/utils/widgets.dart';
import 'package:settings_ui/settings_ui.dart';

class Einstellungen extends StatefulWidget {

  @override
  _EinstellungenState createState() => _EinstellungenState();
}

class _EinstellungenState extends State<Einstellungen> {
  @override
  Widget build(BuildContext context) {
    var appBar = AppBar(
    title: Text(translation.einstellungenlabel),
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
      body: SettingsList(
        sections: [
          SettingsSection(
            title: translation.statistikenlabel,
            tiles: [
              SettingsTile(
                title: translation.Statistiken_text_einstellungen,
                leading: Icon(Icons.bar_chart_rounded),
                onPressed: (BuildContext context) {
                  showMyDialog(
                    context,
                    translation.Statistiken_loschen_title,
                    translation.Statistiken_loschen_body,
                    () {
                      wertbox.clear();
                      Navigator.pop(context);
                    }
                  );
                }
              ),
              SettingsTile(
                title: translation.Statistiken_zeit_text_einstellungen,
                leading: Icon(Icons.timer),
                onPressed: (BuildContext context) {
                  showMyDialog(
                    context,
                    translation.Statistiken_zeit_loschen_title,
                    translation.Statistiken_zeit_loschen_body,
                    () {
                      timebox.clear();
                      Navigator.pop(context);
                    }
                  );
                }
              ),
            ],
          )
        ],
      ),
    );
  }
}