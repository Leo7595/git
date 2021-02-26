import 'package:flutter/material.dart';
import 'package:flutter_ap_00/main.dart';
import 'Home.dart';

class CasaDetalhes extends StatefulWidget {
  final casas_detalhes_nome;
  final casas_detalhes_preco;
  final casas_detalhes_old_preco;
  final casas_detalhes_picture;

  CasaDetalhes(
      {this.casas_detalhes_nome,
      this.casas_detalhes_preco,
      this.casas_detalhes_old_preco,
      this.casas_detalhes_picture});

  @override
  _CasaDetalhesState createState() => _CasaDetalhesState();
}

class _CasaDetalhesState extends State<CasaDetalhes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.black54,
        title: InkWell(
            onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> new HomePage()));},
            child: Text('Detalhes da Casa')),
        /* actions: [
          new IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () {}),
          /*new IconButton(icon: Icon(Icons.shopping_cart, color: Colors.white,), onPressed: (){})*/
        ],*/
      ),
      body: new ListView(
        children: [
          new Container(
            height: 300.0,
            child: GridTile(
                child: Container(
                  color: Colors.white,
                  child: Image.asset(widget.casas_detalhes_picture),
                ),
                footer: new Container(
                  color: Colors.white70,
                  child: ListTile(
                    leading: new Text(
                      widget.casas_detalhes_nome,
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 15.0),
                    ),
                    title: new Row(
                      children: <Widget>[
                        Expanded(
                          child: new Text(
                            "\M${widget.casas_detalhes_old_preco}",
                            style: TextStyle(
                                color: Colors.grey,
                                decoration: TextDecoration.lineThrough),
                          ),
                        ),
                        Expanded(
                          child: new Text(
                            "\M${widget.casas_detalhes_preco}",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, color: Colors.red),
                          ),
                        )
                      ],
                    ),
                  ),
                )),
          ),
          Divider(),
          new ListTile(
            title: new Text("Descrição"),
            subtitle: new Text(
                "Lorem ipsum dolor sit amet, consectetur adipisicing elit, "
                "sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
                "Lorem ipsum dolor sit amet, consectetur adipisicing elit, "
                "sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
                "Lorem ipsum dolor sit amet, consectetur adipisicing elit, "
                "sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."),
          ),
          Divider(),
          new Row(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: new Text(
                  "Tipo",
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(5.0),
                child: new Text(widget.casas_detalhes_nome),
              )
            ],
          ),
          new Row(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: new Text(
                  "Condições",
                  style: TextStyle(color: Colors.grey),
                ),
              ),

              ///CRIAR CASA CONDICOES================
              Padding(
                padding: EdgeInsets.all(5.0),
                child: new Text("Nova"),
              )
            ],
          ),
          new Row(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),

                ///CRIAR LOCALIZACA
                child: new Text(
                  "Localização",
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(5.0),
                child: new Text("Inhambane"),
              )
            ],
          ),
          new Row(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: new Text(
                  "Contacto",
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(5.0),
                child: new Text("846339988"),
              )
            ],
          ),
          Row(
            children: [
              Expanded(
                child: MaterialButton(
                  onPressed: () {},
                  color: Colors.black,
                  textColor: Colors.white,
                  elevation: 0.2,
                  child: new Text("Reservar"),
                ),
              ),
              //new IconButton(icon: Icon(Icons.edit), onPressed: (){}),
              new IconButton(
                  icon: Icon(Icons.favorite_border),
                  color: Colors.red,
                  onPressed: () {})
            ],
          ),
          Divider(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: new Text("Casas Semelhantes"),
          ),
          ///CASAS SEMELHANTES===========
          Container(
            height: 360.0,
            child: Casas_Similares(),
          )
        ],
      ),
    );
  }
}
class Casas_Similares extends StatefulWidget {

  @override
  _Casas_SimilaresState createState() => _Casas_SimilaresState();
}

class _Casas_SimilaresState extends State<Casas_Similares> {
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
    },{
      "nome": "Casa Tipo ",
      "picture": "Imagens/tipo3.JPG",
      "old_preco": 5000,
      "preco": 4000,
    },{
      "nome": "Casa Tipo ",
      "picture": "Imagens/tipo3.JPG",
      "old_preco": 5000,
      "preco": 4000,
    },


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
            padding: const EdgeInsets.all(8.0),
            child: Similar_Single_casas(
              casa_nome: casas_lista[index]['nome'],
              casa_foto: casas_lista[index]['picture'],
              casa_preco: casas_lista[index]['preco'],
              casa_old_preco: casas_lista[index]['old_preco'],
            ),
          );
        });
  }

}

class Similar_Single_casas extends StatelessWidget {
  final casa_nome;
  final casa_foto;
  final casa_preco;
  final casa_old_preco;

  Similar_Single_casas({
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

