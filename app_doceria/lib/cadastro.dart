import 'package:brasil_fields/brasil_fields.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:form_field_validator/form_field_validator.dart';

class Cadastrar extends StatefulWidget {
  const Cadastrar({ Key? key }) : super(key: key);

  @override
  _CadastrarState createState() => _CadastrarState();
}

class _CadastrarState extends State<Cadastrar> {
  List<Map<String, dynamic>> usuarios = [user];//

  final _formKey = GlobalKey<FormState>();
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.purple[300],
        title: Text('NS Doceria'),
        leading: 
          Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: const Icon(Icons.arrow_left_outlined),
                onPressed: () { Navigator.of(context).pushReplacementNamed('/'); },
                tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
              );
            }
          ),
      ),
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: SizedBox(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Wrap(
                spacing: 20,
                runSpacing: 10,
                children: <Widget>[
                  TextFormField(
                    validator: nomeValidator(),
                    onSaved: (String ?_nome){
                      user['nome'] = _nome;//
                    },
                    decoration: InputDecoration(
                      labelText: "Nome",
                      border: OutlineInputBorder(),
                    ),
                    maxLength: 100,
                  ),
                  TextFormField(
                    inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly,
                      TelefoneInputFormatter(),
                    ],
                    keyboardType: TextInputType.number,
                    onSaved: (String ?_telefone){
                      user['telefone'] = _telefone;//
                    },
                    decoration: InputDecoration(
                      labelText: "Celular",
                      border: OutlineInputBorder(),
                    ),
                  ),
                  TextFormField(
                    validator: emailValidator(),
                    onSaved: (String ?_email){
                       user['email'] = _email;//
                   },
                    decoration: InputDecoration(
                      labelText: "E-mail",
                      border: OutlineInputBorder(),  
                    ),
                  ),
                  TextFormField(
                    inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly,
                      CpfInputFormatter(),
                    ],
                    onSaved: (String ?_cpf){
                      user['cpf'] = _cpf;//
                    },
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      labelText: "CPF",
                      border: OutlineInputBorder(),
                    ),
                  ),
                  TextFormField(
                    inputFormatters: [
                      FilteringTextInputFormatter.singleLineFormatter,
                    ],
                    onSaved: (String ?_senha){
                      user['senha'] = _senha;//
                    },
                    keyboardType: TextInputType.text,
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: 'Senha',
                      border: OutlineInputBorder(),
                    ),
                    validator: senhaValidator(),
                  ),
                  ElevatedButton(
                    onPressed: (){
                      if(_formKey.currentState!.validate()){
                        _formKey.currentState!.save();
                        usuarios.add(user);//
                        Navigator.of(context).pushReplacementNamed('/');
                        showAlertDialog(context);
                      }
                    }, 
                    child: Text('Salvar'))
                ],
              ),
            ),
          ),
        ),)
    );
  }

  void showAlertDialog(BuildContext context) {
 
    AlertDialog alerta = AlertDialog(
      title: Text('Cadastro realizado com sucesso!'),
    );

    showDialog(
      context: context, 
      builder: (BuildContext context){
        return alerta;
      }
    );
  }

}
  
FieldValidator emailValidator(){
  return MultiValidator([
    EmailValidator(errorText: 'e-mail inválido'),
    RequiredValidator(errorText: 'campo obrigatório'),
  ]);
}

FieldValidator nomeValidator(){
  return MultiValidator([
    RequiredValidator(errorText: 'campo obrigatório'),
    MinLengthValidator(4, errorText: 'tamanho mínimo de 4 caracteres'),
  ]);
}

FieldValidator senhaValidator(){
  return MultiValidator([
    RequiredValidator(errorText: 'Senha incorreta'),
    MinLengthValidator(4, errorText: 'tamanho mínimo de 4 caracteres'),
  ]);
}

Map<String, dynamic> user = {
};

