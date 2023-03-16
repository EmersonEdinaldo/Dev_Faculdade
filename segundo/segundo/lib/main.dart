import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {

    return Scaffold(

        appBar: AppBar(
          backgroundColor:Colors.purple,
          title: Text(
            'Tela de login',
            style: TextStyle(fontFamily: 'Anton',
              color: Colors.white,

            ),
          ),
          centerTitle: true,
        ),
        body: Center(
            child: Stack(
              children: [


                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16),
                      child: Form(
                        key: formKey,
                        child: Center(
                          child: ListView(
                            shrinkWrap: true,
                            children: [
                              TextFormField(
                                decoration: const InputDecoration(
                                  labelText: 'Email',
                                  labelStyle:TextStyle(
                                      color: Colors.purple,
                                      fontSize: 20),
                                  hintText: 'Insira seu Email',
                                  hintStyle: TextStyle(color: Colors.purple),
                                  suffixText: '@hotmail',
                                  counterText: '',
                                  border: OutlineInputBorder( ),
                                ),
                                maxLength: 4,
                                keyboardType: TextInputType.number,
                                validator: (text) {
                                  if (text == null || text.isEmpty)
                                    return 'Campo obrigatório';
                                }
                              ),
                              const SizedBox(height: 16),
                              TextFormField(
                                decoration: const InputDecoration(
                                    labelText: 'Senha',
                                    labelStyle: TextStyle(color: Colors.purple),
                                    hintText: 'Insira sua senha',
                                    hintStyle: TextStyle(color: Colors.purple),
                                    suffixText: 'Senha',
                                    counterText: '',
                                    border:
                                    OutlineInputBorder()
                                ),
                                maxLength:4,
                                keyboardType: TextInputType.number,
                                validator: (text) {
                                  if (text == null || text.isEmpty)
                                    return 'Campo obrigatório';
                                },
                              ),
                              const SizedBox(height: 16),

                              ElevatedButton(style: ElevatedButton.styleFrom(
                                  primary: Colors.purple),
                                onPressed: () {
                                  if (formKey.currentState!.validate()) {
                                    setState(() {

                                    }
                                    );
                                  }
                                },
                                child: Text('Entrar',
                                  style:TextStyle(color: Colors.white,
                                      fontSize: 20),),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],

            )
        )

    );
  }
}
