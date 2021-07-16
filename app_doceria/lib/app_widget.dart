import 'package:app_doceria/cadastro.dart';
import 'package:app_doceria/catalogo.dart';
import 'package:app_doceria/controlador.dart';
import 'package:app_doceria/home.dart';
import 'package:app_doceria/login.dart';
import 'package:flutter/material.dart';

class AppWidget extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return AnimatedBuilder(
      animation: AppController.instance,
      builder: (context, child){
        return MaterialApp(
          theme: ThemeData(
            primarySwatch: Colors.red,
            brightness: AppController.instance.isdartTheme
             ? Brightness.dark 
             : Brightness.light,             
          ),
          initialRoute: '/home',
          routes: {
            '/': (context) => LoginPage(),
            '/home': (context) => HomePage(),
            '/cadastro': (context) => Cadastrar(),
            '/produtos': (context) => CatalogodeProdutos(),
          },
        );
      },
    );
  }
}