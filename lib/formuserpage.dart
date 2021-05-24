import 'package:flutter/material.dart';

class FormUserPage extends StatefulWidget {
  @override
  _FormUserPageState createState() => _FormUserPageState();
}
class _FormUserPageState extends State<FormUserPage> {

  final _formKey = GlobalKey<FormState>();
  String name = "";
  String sobname = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(title: Text("Form Login"),),
        body: Form(
            key: _formKey,
            child: Column(
              children: [
                TextFormField(
                  validator: (text) {
                   if(text == null || text.isEmpty) {
                  return "Texto é Obrigatório";
                   }
                    return null;
                  },
             decoration: InputDecoration(
               hintText: "Nome",
             ),
             onChanged: (text) {
                name = text;
             },
            ),

            TextFormField(
              // ignore: missing_return
              validator: (text) {
                if(text == null || text.isEmpty) {
                  return "SobreNome é Obrigatório";
                }
                return null;                
              },
             decoration: InputDecoration(
               hintText: "SobreNome",
             ),
             onChanged: (text) {
                sobname = text;
             },              
            ),

                ElevatedButton( 
                  onPressed: () { 
                    final isValid = _formKey.currentState!.validate();

                    if (isValid) {
                      showDialog(
                        context: context, 
                        builder: (context) {
                          return AlertDialog( 
                            title: Text("$name $sobname"),
                          );
                        });
                    }
                  },
                  child: Text("Validar"),
                )
             ],
            ),
          ),
     );
  }
}