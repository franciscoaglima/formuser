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
      backgroundColor: Colors.blue,
        body: Form(
            key: _formKey,
            child: Column(
            children: [
                Expanded(
                  child: Stack(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height,
                        width: MediaQuery.of(context).size.width,
                        color: Colors.blue,
                       ),
                      Center( 
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
//                              Text("Movies New",style: TextStyle(fontSize: 20,color: Colors.white),                                  ),
                                    Container( 
                                    height: 560,
                                    width: 280,
                                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.white,),

                                    ),
                                  Text(" ",style: TextStyle(fontSize: 10,color: Colors.white)),  

 

                                ],
                               ),
                             ),


                         ],
                        ),
                      ),
              ]
        ),
       ),
    );
  }
}
