import 'package:ejemplo_login/pages/home_page.dart';
import 'package:ejemplo_login/pages/login_page.dart';
import 'package:flutter/material.dart';

class CamContrasena extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: AppBar(
            title: Text(
              "Cambio de Contraseña",
              style: TextStyle(fontSize: 20),
              textAlign: TextAlign.end,
            ),
            actions: [],
          ),
        ),
        body: ListView(
          padding: EdgeInsets.symmetric(horizontal: 20),
          children: [
            Container(
                child: Center(
              child: Column(
                children: <Widget>[
                  Image.network(
                    "https://img2.freepng.es/20180510/zxq/kisspng-rick-sanchez-youtube-morty-smith-rick-and-morty-5af4f912a16fc5.2006169515260039866613.jpg",
                  ),
                  SizedBox(height: 20),
                  TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          icon: Icon(Icons.lock),
                          labelText: "Contraseña Antigua")),
                  SizedBox(height: 10),
                  TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          icon: Icon(Icons.lock), labelText: "Nueva Password")),
                  SizedBox(height: 40),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 20),
                    width: double.infinity,
                    child: ElevatedButton(
                      child: Text("Guardar"),
                      onPressed: () {
                        _add(context);
                      },
                    ),
                  ),
                ],
              ),
            ))
          ],
        ));
  }
}

void _add(BuildContext context) {
  final route = MaterialPageRoute(builder: (BuildContext context) {
    return Login();
  });
  Navigator.of(context).push(route);
}
