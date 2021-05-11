import 'package:ejemplo_login/pages/cambiar_contrase%C3%B1a_page.dart';
import 'package:ejemplo_login/pages/home_page.dart';
import 'package:ejemplo_login/pages/register_page.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(150),
          child: AppBar(
            title: Text(
              "Login",
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
                    "https://img2.gratispng.com/20180609/zxv/kisspng-rick-sanchez-morty-smith-rick-and-morty-pocket-li-justin-roiland-5b1c00b8041d56.4424230715285618480169.jpg",
                  ),
                  SizedBox(height: 50),
                  TextField(
                      decoration: InputDecoration(
                          icon: Icon(Icons.email),
                          hintText: "ejemplo@correo.com",
                          labelText: "Email")),
                  SizedBox(height: 10),
                  TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          icon: Icon(Icons.lock), labelText: "Password")),
                  SizedBox(height: 10),
                  Container(
                    alignment: Alignment.centerRight,
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            _cambiar_contra(context);
                          },
                          child: Text(
                            "Forgot Password?",
                            style: TextStyle(color: Colors.blue),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 40),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 20),
                    width: double.infinity,
                    child: ElevatedButton(
                      child: Text("Login"),
                      onPressed: () {
                        _add(context);
                      },
                    ),
                  ),
                  SizedBox(height: 40),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text("Dnon't Have an account?"),
                      GestureDetector(
                        onTap: () {
                          _register(context);
                        },
                        child: Text(
                          "Sign Up",
                          style: TextStyle(color: Colors.blue),
                          textAlign: TextAlign.justify,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ))
          ],
        ));
  }

  void _add(BuildContext context) {
    final route = MaterialPageRoute(builder: (BuildContext context) {
      return MyHomePage();
    });
    Navigator.of(context).push(route);
  }

  void _register(BuildContext context) {
    final route = MaterialPageRoute(builder: (BuildContext context) {
      return Register();
    });
    Navigator.of(context).push(route);
  }

  void _cambiar_contra(BuildContext context) {
    final route = MaterialPageRoute(builder: (BuildContext context) {
      return CamContrasena();
    });
    Navigator.of(context).push(route);
  }
}
