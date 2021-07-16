import 'package:app_doceria/controlador.dart';
import 'package:app_doceria/drawer_app.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState(){
    return HomePageState();
  }
}

class HomePageState extends State<HomePage>{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerApp(),
      appBar: AppBar(
        backgroundColor: Colors.purple[300],
        title: Text('NS Doceria'),
        
      ),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(14.0),
              child: Text(
                """\n\t\t\tSomos a NS Doceria, trabalhamos com confeitaria em geral e doces sob encomenda.
                    \n\t\t\t Temos desde os mais diversos tipos de bolos aos doces mais saborosos.  
                    \n\t\t\tConfira nosso catálogo e escolha um de nossos produtos maravilhosos.""", 
                style: TextStyle(
                  fontSize: 30, 
                  color: Colors.purple[300],
                ),
                textAlign: TextAlign.left,
              ),
            ),
            Container(height: 40),
          ],
        ),        
      ),
      drawerDragStartBehavior: DragStartBehavior.start,
    );
  }
}

class CustomSwitcher extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Switch(
      value: AppController.instance.isdartTheme,
      onChanged: (value){
        AppController.instance.changeTheme();          
      },);
  }
}
