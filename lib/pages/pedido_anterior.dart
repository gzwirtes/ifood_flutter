import 'package:flutter/material.dart';

class TPedidoAnterior extends StatefulWidget {
  @override
  _TPedidoAnteriorState createState() => _TPedidoAnteriorState();
}

class _TPedidoAnteriorState extends State<TPedidoAnterior> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding:
                  const EdgeInsets.only(top: 15.0, left: 20.0, right: 20.0),
              child: Image.asset(
                'assets/images/nao-tem-pedido.png',
                height: 190,
                width: 180,
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(top: 20.0, left: 90.0, right: 90.0),
              child: Text(
                'Você ainda não pediu',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Arial',
                  // fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(top: 8.0, left: 25.0, right: 25.0, bottom: 15),
              child: Text(
                'Selecione Ínicio pra conhecer as melhores opções perto de você',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Arial',
                  color: Colors.black38,
                  // fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(20),
              height: 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(width: 0.2),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    blurRadius: 3.0,
                    spreadRadius: 0.5,
                    offset: Offset(0.7, 0.5),
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: Text(
                            'Explore mais com sua conta Ifood',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: 'Arial',
                              color: Colors.black38,
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: Text(
                            'Entrar ou cadastre-se',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: 'Arial',
                              color: Colors.red,
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
            // Card(
            //   margin: EdgeInsets.all(10),
            //   elevation: 70,
            //   color: Colors.red,
            //   shape: RoundedRectangleBorder(
            //     borderRadius: BorderRadius.circular(5),
            //     side: BorderSide(width: 0.2),
            //   ),
            //   child: Container(
            //     height: 50,
            //     width: double.infinity,
            //     child: Text('Teste'),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}