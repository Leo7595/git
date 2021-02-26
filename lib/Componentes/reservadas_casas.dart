
import 'package:flutter/material.dart';
import 'package:flutter_ap_00/Componentes/Casas.dart';
import 'package:flutter_ap_00/Paginas/Reservadas.dart';

class Casas_reservadas extends StatefulWidget {
  @override
  _Casas_reservadasState createState() => _Casas_reservadasState();
}

class _Casas_reservadasState extends State<Casas_reservadas> {
  var Casas_reservadas = [
    {
      "nome": "Casa Tipo 3",
      "picture": "Imagens/tipo3.JPG",
      "preco": 4000,
      "data": 11/11/11
    },
    {
      "nome": "Um quarto ",
      "picture": "Imagens/1.JPG",
      "preco": 4000,
      "data": 11/11/11
    },
    {
      "nome": "Casa Tipo ",
      "picture": "Imagens/tipo3.JPG",
      "preco": 4000,
      "data": 11/11/11
    },
    {
      "nome": "Um quarto ",
      "picture": "Imagens/1.JPG",
      "preco": 4000,
      "data": 11/11/11
    }
  ];

  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
        itemCount: Casas_reservadas.length,
        itemBuilder: (context, index) {
          return Single_casas_reservadas(
            reservadas_casa_nome: Casas_reservadas[index]["nome"],
            reservadas_casa_foto: Casas_reservadas[index]["picture"],
            reservadas_casa_preco: Casas_reservadas[index]["preco"],
            reservadas_casa_data: Casas_reservadas[index]["data"],
          );
        });
  }
}

class Single_casas_reservadas extends StatelessWidget {
  final reservadas_casa_nome;
  final reservadas_casa_foto;
  final reservadas_casa_preco;
  final reservadas_casa_data;

  Single_casas_reservadas(
      {this.reservadas_casa_nome,
      this.reservadas_casa_foto,
      this.reservadas_casa_preco,
      this.reservadas_casa_data});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(

        //===========================LEADING
        leading: new Image.asset(reservadas_casa_foto, width: 100.0,
        height: 80.0,),

        //===============TITULO
        title: new Text(reservadas_casa_nome, style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
        subtitle: new Column(
          children: [
            new Row(
              children: [
                // ===================PRECO DA CASA
               /* Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: new Text ("Preço:"),
                ),
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: new Text ("\$${reservadas_casa_preco}", style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),),
                ),*/

               new Padding(padding: const EdgeInsets.fromLTRB(2.0, 8.0, 8.0, 8.0),
                  child:  new Text ("Data:", style: TextStyle(fontSize: 17.0),) ,
                ),
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: new Text ("${reservadas_casa_data}", style: TextStyle(fontSize: 15.0),),
                )
              ]               ,
            ),
        new Container(
          alignment: Alignment.topLeft,
          child: new Text("\$${reservadas_casa_preco}", style: TextStyle(fontSize: 17.0,
          fontWeight: FontWeight.bold, color: Colors.red),),
        )
          ],
        ),


      ),
    );
  }
}
