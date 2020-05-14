import 'package:flutter/material.dart';

class TLogin extends StatefulWidget {
  @override
  _TLoginState createState() => _TLoginState();
}

class _TLoginState extends State<TLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              GestureDetector(
                child: Padding(
                  padding: const EdgeInsets.only(top: 25),
                  child: Icon(
                    Icons.keyboard_arrow_left,
                    size: 40.0,
                    color: Colors.red,
                  ),
                ),
                onTap: () {
                  Navigator.of(context).pushReplacementNamed('/home');
                },
              ),
              Padding(
                padding:
                    const EdgeInsets.only(top: 10.0, left: 20.0, right: 20.0),
                child: Image.asset(
                  'assets/images/people-buying.png',
                  height: 280,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20.0, left: 90.0, right: 90.0),
            child: Text(
              'Falta pouco pra matar sua fome!',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Arial',
                // fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 25.0, left: 5.0, right: 5.0),
            child: Text(
              'Como deseja continuar?',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Arial',
                color: Colors.black38,
                // fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 50.0),
            child: Container(
              height: 60,
              child: FlatButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                color: Colors.blueAccent,
                child: Row(
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.white,
                        ),
                        child: Row(
                          children: <Widget>[
                            Image.asset(
                              'assets/images/google-logo.png',
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 6,
                      child: Container(
                        child: Text(
                          'Continuar com o Google',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: 'Arial',
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                onPressed: () {
                  print('Continuar com o Google');
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 10.0),
            child: Container(
              height: 60,
              child: FlatButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                  side: BorderSide(color: Colors.black38),
                ),
                color: Colors.white,
                child: Row(
                  children: <Widget>[
                    Expanded(
                      flex: 6,
                      child: Container(
                        child: Text(
                          'Outras opções',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: 'Arial',
                            color: Colors.black,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                onPressed: () {
                  print('Outras Opções');
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
