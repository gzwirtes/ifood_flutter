import 'package:flutter/material.dart';
import 'package:ifood_flutter/components/alert.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class TRestaurantes extends StatefulWidget {
  @override
  _TRestaurantesState createState() => _TRestaurantesState();
}

class _TRestaurantesState extends State<TRestaurantes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 12,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: Text(
                          'ENTREGAR EM',
                          style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).pushReplacementNamed('/login');
                        },
                        child: Text(
                          'Sair',
                          style: TextStyle(
                            color: Theme.of(context).accentColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Text(
                        'Stn, 716',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Icon(
                        Icons.keyboard_arrow_down,
                        color: Theme.of(context).accentColor,
                        size: 15,
                      )
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 14,
              ),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.grey.shade100,
                      ),
                      child: TextField(
                          autofocus: false,
                          decoration: InputDecoration(
                            hintText: 'Prato ou Restaurante',
                            border: InputBorder.none,
                            prefixIcon: Icon(
                              Icons.search,
                              color: Theme.of(context).accentColor,
                            ),
                          )),
                    ),
                  ),
                  SizedBox(
                    width: 14,
                  ),
                  Text(
                    'Filtros',
                    style: TextStyle(
                      color: Theme.of(context).accentColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 12,
              ),
              child: Container(
                height: 180,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                ),
                child: ListView(
                  padding: EdgeInsets.only(right: 12),
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.asset(
                            'assets/images/restaurantes-0.png',
                            height: 140,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Confira sua entrega grátis na sacola',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.black54),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.asset(
                            'assets/images/restaurantes-1.png',
                            height: 140,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Comida gostosa e barata',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.black54),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.asset(
                            'assets/images/restaurantes-2.png',
                            height: 140,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'A taxa é cortesia para você',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.black54),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 12,
              ),
              child: Container(
                height: 90,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                ),
                child: ListView(
                  padding: EdgeInsets.only(right: 12),
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {
                        alertOK(context, 'Pizza', 'Pizza', AlertType.info);
                        // print('teste123');
                      },
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.asset(
                              'assets/images/pizza.png',
                              height: 60,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Pizza',
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.black54),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    GestureDetector(
                      onTap: () {
                        alertOK(context, 'Lanches', 'Lanches', AlertType.info);
                      },
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.asset(
                              'assets/images/lanches.png',
                              height: 60,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Lanches',
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.black54),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.asset(
                            'assets/images/acai.png',
                            height: 60,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Açai',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.black54),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.asset(
                            'assets/images/japonesa.png',
                            height: 60,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Japonesa',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.black54),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Container(
                height: 170,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  // color: Colors.red,
                ),
                child: GestureDetector(
                  onTap: () {
                    alertOK(context, 'Gourmet', 'Gourmet', AlertType.info);
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.asset(
                          'assets/images/gourmet.png',
                          fit: BoxFit.fill,
                        ),
                      ),
                    ],
                  ),
                ),
                
              ),
            ),
          ],
        ),
      ),
    );
  }
}