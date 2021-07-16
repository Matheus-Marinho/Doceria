import 'package:app_doceria/cadastro.dart';
import 'package:app_doceria/drawer_app.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({ Key? key }) : super(key: key);
  
  @override
  LoginPageState createState() => LoginPageState();
}

bool logado = false;
class LoginPageState extends State<LoginPage> {
  String email = '';
  String senha = '';
  List<Map<String, dynamic>> usuarios = [];//
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerApp(),
      appBar: AppBar(
        backgroundColor: Colors.purple[300],
        title: Text('NS Doceria'),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    child: Image.asset('assets/images/doce.png'),
                  ),
                  Container(height: 10,),
                  TextField(
                    onChanged: (text){
                      email = text;
                    },
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      labelText: 'Email',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  Container(height: 10,),
                  TextField(
                    onChanged: (text){
                      senha = text;
                    },
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: 'Senha',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  Container(height: 10,),
                  /*GestureDetector(
                    child: Text('Esqueci a senha', style: TextStyle(fontSize: 16)),
                    onTap: (){
                      Navigator.of(context).pushReplacementNamed('/');
                    }, 
                  ),*/
                  Container(width: 30,),
                  GestureDetector(
                    child: Text('Cadastrar', style: TextStyle(fontSize: 16)),
                    onTap: (){
                      Navigator.of(context).pushReplacementNamed('/cadastro');
                    }, 
                  ),
                  Container(height: 10,),
                  ElevatedButton(
                    onPressed: () {
                      print(usuarios.length);
                      for(int i = 0; i <= usuarios.length; i++){
                        if(email == user['email'] && senha == user['senha']){
                          Navigator.of(context).pushReplacementNamed('/home');
                          logado = true;
                        }else{
                          showAlertDialog(context);
                        }
                      }
                    }, 
                    child: Text('Entrar'),
                  ),
                ],
              ),
            ),
          ),
        ),    
      ),
      drawerDragStartBehavior: DragStartBehavior.start,
    );
  }

  void showAlertDialog(BuildContext context) {

    AlertDialog alerta = AlertDialog(
      title: Text('E-mail ou senha inválido!'),
    );

    showDialog(
      context: context, 
      builder: (BuildContext context){
        return alerta;
      }
    );
  }

}


