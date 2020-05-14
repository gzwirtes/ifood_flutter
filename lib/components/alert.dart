import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

void alertOK(BuildContext context, String msg, String title, AlertType typeAlert){
  Alert(
      context: context,
      type: typeAlert,
      title: title,
      desc: msg,
      buttons: [
          DialogButton(
          child: Text(
              "OK",
              style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          onPressed: () => Navigator.pop(context),
          width: 120,
          )
      ],
  ).show();
}