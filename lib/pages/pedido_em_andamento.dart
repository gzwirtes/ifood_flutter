import 'package:flutter/material.dart';

class TPedidoEmAndamento extends StatefulWidget {
  @override
  _TPedidoEmAndamentoState createState() => _TPedidoEmAndamentoState();
}

class _TPedidoEmAndamentoState extends State<TPedidoEmAndamento> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Text('Pedidos em Andamento'),
      ),
    );
  }
}