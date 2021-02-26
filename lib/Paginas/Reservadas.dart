import 'package:flutter/material.dart';

import 'package:flutter_ap_00/Componentes/reservadas_casas.dart';

class Reservadas extends StatefulWidget {
  @override
  _ReservadasState createState() => _ReservadasState();
}

class _ReservadasState extends State<Reservadas> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.black54,
        title: Text('Reservadas'),
        actions: [
          new IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () {}),
          /*new IconButton(icon: Icon(Icons.shopping_cart, color: Colors.white,), onPressed: (){})*/
        ],
      ),

      body: new Casas_reservadas(),
/*
      bottomNavigationBar: new Container(
        color: Colors.white,
        child: Row(
          children: [
            Expanded(child: ListTile(
              
              title: new Text("EXemplo"),
              subtitle: new Text("SEcond"),
              
            )),

          ],
        ),
      ),*/
    );
  }
}
