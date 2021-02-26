import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ap_00/Paginas/Casas_detalhes.dart';

class Casas extends StatefulWidget {
  @override
  _CasasState createState() => _CasasState();
}

class _CasasState extends State<Casas> {
  var casas_lista = [
    {
      "nome": "Casa Tipo 3",
      "picture": "Imagens/tipo3.JPG",
      "old_preco": 5000,
      "preco": 4000,
    },
    {
      "nome": "Um quarto ",
      "picture": "Imagens/1.JPG",
      "old_preco": 5000,
      "preco": 4000,
    },
    {
      "nome": "Casa Tipo ",
      "picture": "Imagens/tipo3.JPG",
      "old_preco": 5000,
      "preco": 4000,
    },
    {
      "nome": "Um quarto ",
      "picture": "Imagens/1.JPG",
      "old_preco": 5000,
      "preco": 4000,
    },
{
"nome": "Um quarto ",
"picture": "Imagens/1.JPG",
"old_preco": 5000,
"preco": 4000,
},
{
"nome": "Um quarto ",
"picture": "Imagens/1.JPG",
"old_preco": 5000,
"preco": 4000,
},
{
"nome": "Um quarto ",
"picture": "Imagens/1.JPG",
"old_preco": 5000,
"preco": 4000,
},
{
"nome": "Um quarto ",
"picture": "Imagens/1.JPG",
"old_preco": 5000,
"preco": 4000,
}

    /*
    {
      "nome": "Dependencia Tipo 3",
      "picture": "Imagens/AVGT8481.JPG",
      "old_preco": 5000,
      "preco": 4000,
    },
    {
      "nome": "Quartos ",
      "picture": "Imagens/GAQY7076.JPG",
      "old_preco": 5000,
      "preco": 4000,
    },*/
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: casas_lista.length,
        gridDelegate:
            new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(4.0),
            child: Single_casas(
              casa_nome: casas_lista[index]['nome'],
              casa_foto: casas_lista[index]['picture'],
              casa_preco: casas_lista[index]['preco'],
              casa_old_preco: casas_lista[index]['old_preco'],
            ),
          );
        });
  }
}

class Single_casas extends StatelessWidget {
  final casa_nome;
  final casa_foto;
  final casa_preco;
  final casa_old_preco;

  Single_casas({
    this.casa_nome,
    this.casa_foto,
    this.casa_preco,
    this.casa_old_preco,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
        tag: new Text("hero 1"),
        child: Material(
          child: InkWell(
            onTap: () => Navigator.of(context).push(new MaterialPageRoute(

              //PASSANDO VALORES DA CASA PARA CASA DETALHES
                builder: (context) => new CasaDetalhes(
                  casas_detalhes_nome: casa_nome,
                  casas_detalhes_preco: casa_preco,
                  casas_detalhes_old_preco: casa_old_preco,
                  casas_detalhes_picture: casa_foto,
                ))),
            child: GridTile(
              footer: Container(
                color: Colors.white,
                child: new Row(
                  children: [
                    Expanded(child: new Text(casa_nome, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),),),
                    new Text("\$${casa_preco}", style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),)
                  ],
                )
              ),
              child: Image.asset(
                casa_foto,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
