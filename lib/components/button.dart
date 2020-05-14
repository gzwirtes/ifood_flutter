import 'package:flutter/material.dart';

class TButton extends StatelessWidget {
  final String buttonCaption;
  final IconData buttonIcone;
  final VoidCallback buttonOnClick;

  const TButton({Key key, this.buttonCaption, this.buttonIcone, this.buttonOnClick}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: 60,
        child: FlatButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          color: Theme.of(context).accentColor,
          splashColor: Colors.red[700],
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(
                buttonIcone,
                color: Colors.white,
                size: 30,
              ),
              // buttonCaption != "" ?
              // SizedBox(width: 20,):
              // SizedBox(width: 0,),
              // caption != "" ?
              Text(
                buttonCaption,
                style: TextStyle(color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          onPressed: (){buttonOnClick();},
        ),
    );
  }
}