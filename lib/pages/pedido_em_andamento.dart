import 'package:flutter/material.dart';

class TPedidoEmAndamento extends StatefulWidget {
  @override
  _TPedidoEmAndamentoState createState() => _TPedidoEmAndamentoState();
}

class _TPedidoEmAndamentoState extends State<TPedidoEmAndamento> {
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
                'Nenhum pedido em andamento',
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
                  const EdgeInsets.only(top: 8.0, left: 25.0, right: 25.0),
              child: Text(
                'Que tal experimentar um lugar novo?',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Arial',
                  color: Colors.black38,
                  // fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(top: 0.0, left: 25.0, right: 25.0, bottom: 15),
              child: Text(
                'É só selecionar Ínicio',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Arial',
                  color: Colors.black38,
                  // fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
