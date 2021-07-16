import 'package:app_doceria/drawer_app.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class CatalogodeProdutos extends StatefulWidget {
  const CatalogodeProdutos({ Key? key }) : super(key: key);

  @override
  _CatalogodeProdutosState createState() => _CatalogodeProdutosState();
}

class _CatalogodeProdutosState extends State<CatalogodeProdutos> {
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerApp(),
      appBar: AppBar(
        backgroundColor: Colors.purple[300],
        title: Text('NS Doceria'),
      ),
      body: Material(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                children: [
                  Image.asset(
                    'assets/images/catalogo/NakedCake.jpeg', 
                    width: 150,
                    height: 150,
                    scale: 8,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Naked Cakes', 
                        style: TextStyle(
                          fontSize: 23,
                        ),
                      ),
                      Text(
                        'Sabores diversos.',
                        style: TextStyle(
                          fontSize: 16
                        ),
                      ),
                    ],
                  ),
                ],),
                Row(
                children: [
                  Image.asset(
                    'assets/images/catalogo/Chantininho.jpg', 
                    width: 150,
                    height: 150,
                    scale: 5.5,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Bolos Chantininho', 
                        style: TextStyle(
                          fontSize: 23,
                        ),
                      ),
                      Text(
                        'Personalizáveis a seu \ngosto.',
                        style: TextStyle(
                          fontSize: 16
                        ),
                      ),
                    ],
                  ),
                ],),
                Row(
                children: [
                  Image.asset(
                    'assets/images/catalogo/bolos.png', 
                    width: 150,
                    height: 150,
                    scale: 5.2,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Bolos Caseiros e\nBolos Típicos', 
                        style: TextStyle(
                          fontSize: 23,
                        ),
                      ),
                      Text(
                        'Tipos: Fofo, de Milho, \nde Cenoura e etc..',
                        style: TextStyle(
                          fontSize: 16
                        ),
                      ),
                    ],
                  ),
                ],),
                Row(
                children: [
                  Image.asset(
                    'assets/images/catalogo/cupcakes.jpg', 
                    width: 150,
                    height: 150,
                    scale: 5.4,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Cupcakes', 
                        style: TextStyle(
                          fontSize: 23,
                        ),
                      ),
                      Text(
                        'Diversos sabores e \nrecheios',
                        style: TextStyle(
                          fontSize: 16
                        ),
                      ),
                    ],
                  ),
                ],),
                Row(
                children: [
                  Image.asset(
                    'assets/images/catalogo/cones.jpg', 
                    width: 150,
                    height: 150,
                    scale: 4.3,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Cones Trufados', 
                        style: TextStyle(
                          fontSize: 23,
                        ),
                      ),
                      Text(
                        'Diversos sabores e \nrecheios',
                        style: TextStyle(
                          fontSize: 16
                        ),
                      ),
                    ],
                  ),
                ],),
                Row(
                children: [
                  Image.asset(
                    'assets/images/catalogo/doces.jpg', 
                    width: 150,
                    height: 150,
                    scale: 6,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Docinhos de \naniversário', 
                        style: TextStyle(
                          fontSize: 23,
                        ),
                      ),
                      Text(
                        'Diversos sabores e \nrecheios',
                        style: TextStyle(
                          fontSize: 16
                        ),
                      ),
                    ],
                  ),
                ],),
            ],
          ),
        ),
      ),
      drawerDragStartBehavior: DragStartBehavior.start,
    );
  }
}