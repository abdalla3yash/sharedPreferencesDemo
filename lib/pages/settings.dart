import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  int favColor = Colors.white.value;
  SharedPreferences prefs;
  saveData(int color) async {
    prefs = await SharedPreferences.getInstance();
    prefs.setInt('favc', color);
  }

  getData() async {
    prefs = await SharedPreferences.getInstance();
    setState(() {
      favColor = prefs.getInt('favc') ?? Colors.white.value;
    });
  }

  @override
  Widget build(BuildContext context) {
    getData();
    return Scaffold(
      backgroundColor: Color(favColor),
      appBar: AppBar(
        title: Text('setting'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            RadioListTile(
              title: Text('Green'),
              value: Colors.green.value,
              groupValue: favColor,
              onChanged: (int color) {
                setState(() {
                  favColor = color;
                });
                saveData(color);
              },
            ),
            RadioListTile(
              title: Text('Red'),
              value: Colors.red.value,
              groupValue: favColor,
              onChanged: (int color) {
                setState(() {
                  favColor = color;
                });
                saveData(color);
              },
            ),
            RadioListTile(
              title: Text('Yellow'),
              value: Colors.yellow.value,
              groupValue: favColor,
              onChanged: (int color) {
                setState(() {
                  favColor = color;
                });
                saveData(color);
              },
            ),
          ],
        ),
      ),
    );
  }
}
