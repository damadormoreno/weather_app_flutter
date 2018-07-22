import 'package:flutter/material.dart';

class WeekDrawer extends StatelessWidget {

  final week = [
    'Lunes\n26 Agosto',
    'Martes\n27 Agosto',
    'Miércoles\n28 Agosto',
    'Jueves\n29 Agosto',
    'Viernes\n30 Agosto',
    'Sábado\n31 Agosto',
    'Domingo\n01 Septiembre',
  ];

  List<Widget> _buildDayButtons() {
    return week.map((String title) {
      return new Expanded(
        child: new GestureDetector(
          onTap: () {
            //TODO:
          },
          child: new Text(
            title,
            textAlign: TextAlign.center,
            style: new TextStyle(
              color: Colors.white,
              fontSize: 14.0,
            ),
          ),
        ),
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return new Container(
      width: 125.0,
      height: double.infinity,
      color: const Color(0xAA234060),
      child: new Column(
        children: <Widget>[
          new Expanded(
            child: new Icon(
              Icons.refresh,
              color: Colors.white,
              size: 40.0,
            ),
          ),
        ]
          ..addAll(_buildDayButtons()),
      ),
    );
  }
}
