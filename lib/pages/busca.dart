import 'package:flutter/material.dart';
import 'package:ifood_flutter/components/alert.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class TBusca extends StatefulWidget {
  @override
  _TBuscaState createState() => _TBuscaState();
}

class _TBuscaState extends State<TBusca> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            ListView(children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(
                  top: 15,
                  left: 15,
                  right: 15,
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
                              hintText: 'Item ou loja',
                              border: InputBorder.none,
                              prefixIcon: Icon(
                                Icons.search,
                                color: Theme.of(context).accentColor,
                              ),
                            )),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 40,
                  left: 20,
                  right: 15,
                ),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        child: Text(
                          'Categorias',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            fontFamily: 'Arial',
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
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
                      // Column(
                      //   crossAxisAlignment: CrossAxisAlignment.start,
                      //   children: <Widget>[
                      //     ClipRRect(
                      //       borderRadius: BorderRadius.circular(8),
                      //       child: Image.asset(
                      //         'assets/images/restaurantes-0.png',
                      //         height: 140,
                      //       ),
                      //     ),
                      //     SizedBox(
                      //       height: 10,
                      //     ),
                      //     Text(
                      //       'Confira sua entrega grátis na sacola',
                      //       style: TextStyle(
                      //           fontWeight: FontWeight.w500,
                      //           color: Colors.black54),
                      //     ),
                      //   ],
                      // ),
                      // SizedBox(
                      //   width: 10,
                      // ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          // Container(
                          //   decoration: BoxDecoration(
                          //     borderRadius: BorderRadius.circular(5),
                          //     color: Colors.red,
                          //   ),
                          //   child: Text(
                          //     'Comida gostosa e barata',
                          //     style: TextStyle(
                          //         fontWeight: FontWeight.w500,
                          //         color: Colors.black54),
                          //   ),
                          // )
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
                    ],
                  ),
                ),
              ),
            ]),
          ],
        ),
      ),
    );
  }
}
