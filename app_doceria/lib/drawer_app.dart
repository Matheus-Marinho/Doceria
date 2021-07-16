import 'package:app_doceria/cadastro.dart';
import 'package:app_doceria/home.dart';
import 'package:app_doceria/login.dart';
import 'package:flutter/material.dart';

class DrawerApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
      return Drawer(
          child: ListView(
            children: [
              if(logado == true)
                UserAccountsDrawerHeader(
                  accountName: Text(user['nome']),
                  accountEmail: Text(user['email']),
                  currentAccountPicture: CircleAvatar(
                    backgroundColor: 
                    Theme.of(context).platform == TargetPlatform.android ?
                        Colors.white: Colors.purple[300],
                      child: Image.asset('assets/images/perfil.png'),
                  ),
                )
              else
                ListTile(
                  leading: Icon(Icons.login_outlined),
                  title: Text('Login'),
                  onTap: () {
                    Navigator.of(context).pushReplacementNamed('/');
                  }
                ),
              ListTile(
                leading: Icon(Icons.home_outlined),
                title: Text('Inicio'),
                subtitle: Text('Pagina inical'),
                onTap: () {
                  Navigator.of(context).pushReplacementNamed('/home');
                },
              ),
              ListTile(
                leading: Icon(Icons.list_alt_outlined),
                title: Text('Catálogo'),
                subtitle: Text('Lista de produtos'),
                onTap: () {
                  Navigator.of(context).pushReplacementNamed('/produtos');
                },
              ),
              ListTile(
                leading: Icon(Icons.dark_mode_outlined),
                title: Text('Tema Noturno'),
                subtitle: Text('Ativar/Desativar tema noturno'),
                trailing: CustomSwitcher(),
              ),
              ListTile(
                leading: Icon(Icons.crop_square_outlined),
                title: Text('Instagram'),
                subtitle: Text('@ns_doceria'),
                onTap: (){},
              ),
              if(logado == true)
                ListTile(
                  leading: Icon(Icons.logout_outlined),
                  title: Text('Deslogar'),
                  onTap: () {
                    Navigator.of(context).pushReplacementNamed('/');
                    logado = false;
                  },
                ),
            ],
          ),
        );    
  }
}
