import 'package:flutter/material.dart';

class AlarmSchool extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _AlarmSchool();
}

class _AlarmSchool extends State<AlarmSchool> {
  final myController = TextEditingController();
  final myController2 = TextEditingController();
  final myControllerPass = TextEditingController();

  @override
  void dispose() {
    myController.dispose();
    myController2.dispose();
    myControllerPass.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(4, 53, 148, 1),
        body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: ListView(children: <Widget>[
              Image.asset(
                'images/alarm.png',
                fit: BoxFit.fitWidth,
              ),
              TextField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  labelStyle: TextStyle(
                    color: Colors.white,
                  ),
                  labelText: 'Tipo de usuario',
                  prefixIcon: Icon(Icons.account_circle, color: Colors.white),
                ),
                controller: myController,
              ),
              TextField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  labelStyle: TextStyle(
                    color: Colors.white,
                  ),
                  labelText: 'Correo electrónico',
                  prefixIcon: Icon(Icons.email, color: Colors.white),
                ),
                controller: myController2,
              ),
              TextField(
                keyboardType: TextInputType.text,
                obscureText: true,
                decoration: InputDecoration(
                  labelStyle: TextStyle(
                    color: Colors.white,
                  ),
                  labelText: 'Contraseña',
                  prefixIcon: Icon(Icons.lock, color: Colors.white),
                ),
                controller: myControllerPass,
              ),
              SizedBox(height: 10),
              MaterialButton(
                  minWidth: 200.0,
                  height: 40.0,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  color: Colors.orange[400],
                  child: Text('Iniciar Sesión',
                      style: TextStyle(color: Colors.white))),
            ])));
  }
}
