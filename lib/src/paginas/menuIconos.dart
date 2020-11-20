import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:parcial3_practica2/src/paginas/app_icons.dart';
import 'package:parcial3_practica2/src/paginas/school_alarm.dart';

class menu_iconos extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _menu_iconos();
}

class _menu_iconos extends State<menu_iconos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView(children: <Widget>[
          Image.asset(
            'images/fima.jpg',
            fit: BoxFit.cover,
          ),
          iconos,
          iconos2,
          iconos3,
          iconos4,
          SizedBox(height: 10),
          MaterialButton(
              minWidth: 200.0,
              height: 30.0,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => (AlarmSchool())),
                );
              },
              color: Colors.brown,
              child:
                  Text('School Alarm', style: TextStyle(color: Colors.white)))
        ]),
      ),
    );
  }

  Widget iconos = Container(
    margin: const EdgeInsets.only(top: 20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        _creaColumna(Colors.brown, Icons.info, 'Informacion'),
        _creaColumna(Colors.brown, Icons.account_circle, 'Mi cuenta'),
        _creaColumna(Colors.brown, Icons.account_box, 'Contactos'),
      ],
    ),
  );

  Widget iconos2 = Container(
    margin: const EdgeInsets.only(top: 50),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        _creaColumna(Colors.brown, Icons.bookmark, 'Bokmarks'),
        _creaColumna(Colors.brown, Icons.people, 'Friends'),
        _creaColumna(Colors.brown, Icons.map, 'Planos'),
      ],
    ),
  );
  Widget iconos3 = Container(
    margin: const EdgeInsets.only(top: 50),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        _creaColumna(Colors.brown, MyFlutterApp.calc, 'Calculadora'),
        _creaColumna(Colors.brown, MyFlutterApp.award, 'Carapela'),
        _creaColumna(Colors.brown, MyFlutterApp.newspaper, 'Noticias'),
      ],
    ),
  );
  Widget iconos4 = Container(
    margin: const EdgeInsets.only(top: 50, bottom: 20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        _creaColumna(Colors.brown, Icons.calendar_today, 'Agemda'),
        _creaColumna(Colors.brown, Icons.notifications, 'Notificaciones'),
        _creaColumna(Colors.brown, MyFlutterApp.globe, 'Internet'),
      ],
    ),
  );

  static Column _creaColumna(Color color, IconData icon, String texto) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Icon(
          icon,
          color: color,
          size: 40,
        ),
        Container(
          margin: const EdgeInsets.only(top: 10),
          child: Text(
            texto,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}
