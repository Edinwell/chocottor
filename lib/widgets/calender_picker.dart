import 'dart:async';

import 'package:flutter/material.dart';

class ExpirationDate extends StatefulWidget {
  ExpirationDate({Key key, Key date}) : super(key: key);

  @override
  _ExpirationDateState createState() => _ExpirationDateState();
}

class _ExpirationDateState extends State<ExpirationDate> {
  DateTime selectedDate = DateTime.now();

  Future<Null> _selectDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2020, 1),
        lastDate: DateTime(2101));
    if (picked != null && picked != selectedDate)
      setState(() {
        selectedDate = picked;
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text("${selectedDate.toLocal()}".split(' ')[0]),
            SizedBox(
              width: 20.0,
            ),
            RaisedButton(
                onPressed: () => _selectDate(context),
                child: Icon(
                  Icons.calendar_today,
                )),
          ],
        ),
      ),
    );
  }
}
