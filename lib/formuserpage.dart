import 'package:flutter/material.dart';

class FormUserPage extends StatefulWidget {
  @override
  _FormUserPageState createState() => _FormUserPageState();
}

class _FormUserPageState extends State<FormUserPage> {

  // final _formKey = GlobalKey<FormState>();

  String name = "";


  @override
  Widget build(BuildContext context) {
    return Scaffold(
//    appBar: AppBar(title: Text("Form Login"),),

        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: ElevatedButton(
                  onPressed: () {
                    showDialog(
                     barrierDismissible: true,
                     context: context,
                     builder: (context) {
                       return AlertDialog(
                           title: Text("Titulo de Alerta"),
                         content: Text("Flutter é Maravilhoso !"),
                         actions: [
                           TextButton(
                             onPressed: () {
                                Navigator.pop(context);
                               }, 
                            child: Text("Sim"),     
                           ),
                         ],
                       ); 
                  });
                 },
                 child: Text("Alerta"),
                ),
              ),
            ],
          ),
        ),
     );
  }
}