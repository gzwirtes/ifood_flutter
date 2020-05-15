import 'package:flutter/material.dart';
import 'package:ifood_flutter/components/alert.dart';
import 'package:ifood_flutter/pages/pedido_anterior.dart';
import 'package:ifood_flutter/pages/pedido_em_andamento.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class TPedido extends StatefulWidget {
  @override
  _TPedidoState createState() => _TPedidoState();
}

class _TPedidoState extends State<TPedido> with SingleTickerProviderStateMixin {
  TabController controller;

  @override
  void initState() {
    super.initState();
    controller = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Center(
            child: Text(
              'PEDIDOS',
              style: TextStyle(
                color: Colors.black,
                fontSize: 15,
              ),
            ),
          ),
          backgroundColor: Colors.white,
          bottom: TabBar(
              labelColor: Colors.red,
              controller: controller,
              tabs: <Widget>[
                Tab(
                  text: 'ANTERIORES',
                ),
                Tab(
                  text: 'EM ANDAMENTO',
                )
              ]
          )
        ),
        body: TabBarView(
          controller: controller,
          children: <Widget>[
            TPedidoAnterior(),
            TPedidoEmAndamento(),
          ],
        ),
    );
    // return DefaultTabController(
    //   length: 2,
    //   child: Scaffold(
    //     appBar: AppBar(
    //       backgroundColor: Colors.white,
    //       title: Center(
    //           child: Text(
    //         'Pedidos',
    //         style: TextStyle(
    //           color: Colors.redAccent
    //         ),
    //       )),
    //       bottom: TabBar(
    //         labelColor: Colors.red,
    //         tabs: <Widget>[
    //         Tab(
    //           text: 'ANTERIORES',
    //         ),
    //         Tab(
    //           text: 'EM ANDAMENTO',
    //         ),
    //       ]),
    //     ),
    //   ),
    // );
  }
}
