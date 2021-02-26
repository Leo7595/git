import 'package:flutter/material.dart';
import 'package:flutter_ap_00/Componentes/Casas.dart';
import 'package:flutter_ap_00/Paginas/Reservadas.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.black54,
        title: Text('Home'),
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
      drawer: new Drawer(
        child: new ListView(
          children: [
            //HEADER

            new UserAccountsDrawerHeader(
              accountName: Text('Leonildo dos Santos'),
              accountEmail: Text('leonildodossantos22@gmail.com'),
              currentAccountPicture: GestureDetector(
                child: new CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                ),
              ),
              decoration: new BoxDecoration(color: Colors.black54),
            ),

            //BODY--------

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Inicial'),
                leading: Icon(Icons.home, color: Colors.red),
              ),
            ),

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Minha Conta'),
                leading: Icon(Icons.person, color: Colors.red),
              ),
            ),

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Provincias'),
                leading: Icon(Icons.local_convenience_store, color: Colors.red),
              ),
            ),

            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => new Reservadas()));
              },
              child: ListTile(
                title: Text('Reservadas'),
                leading: Icon(Icons.shopping_basket, color: Colors.red),
              ),
            ),

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Categorias'),
                leading: Icon(Icons.dashboard, color: Colors.red),
              ),
            ),

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Favoritas'),
                leading: Icon(
                  Icons.favorite,
                  color: Colors.red,
                ),
              ),
            ),

            Divider(),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Configuracoes'),
                leading: Icon(Icons.settings),
              ),
            ),

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Sobre'),
                leading: Icon(Icons.help, color: Colors.blue),
              ),
            ),
          ],
        ),
      ),
      body: new Column(
        children: [
          //PADDING WIDGET
          new Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                alignment: Alignment.centerLeft,
                child: new Text('Recentes')),
          ),

          //=========GRIDVIEW========
          Flexible(child: Casas()),
        ],
      ),
    );
  }
}
