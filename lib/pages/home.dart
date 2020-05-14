import 'package:flutter/material.dart';
import 'package:ifood_flutter/components/alert.dart';
import 'package:ifood_flutter/pages/pedido.dart';
import 'package:ifood_flutter/pages/perfil.dart';
import 'package:ifood_flutter/pages/restaurantes.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class THome extends StatefulWidget {
  @override
  _THomeState createState() => _THomeState();
}

class _THomeState extends State<THome> {
  int _currentIndex = 0;

  final List<Widget> _lista = [
      TRestaurantes(),
      Text('Busca'),
      Text('Pedido'),
      Text('Perfil'),
    ];

    void onItemTap(int index){
      setState(() {
        _currentIndex = index;
      });
    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _lista.elementAt(_currentIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: onItemTap,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.black,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              // color: Colors.black,
            ),
            title: Text(
              'Home',
              // style: TextStyle(color: Colors.black),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
              // color: Colors.black,
            ),
            title: Text(
              'Buscas',
              // style: TextStyle(color: Colors.black),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.receipt,
              // color: Colors.black,
            ),
            title: Text(
              'Pedido',
              // style: TextStyle(color: Colors.black),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              // color: Colors.black,
            ),
            title: Text(
              'Perfil',
              // style: TextStyle(color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }
}
