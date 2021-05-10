import 'package:ejemplo_login/pages/home_page.dart';
import 'package:flutter/material.dart';


class Login extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    
    return Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(200),         
            child: AppBar(                 
              title: Text(
                "Login",
                style: TextStyle(
                  
                ),
                textAlign: TextAlign.end,
              ),
              actions: [

              ],
              
            ),
          ),
          body: Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Center(
              child: Column(
                
                children: <Widget>[
                  SizedBox(height: 50),
                  TextField(
                      decoration: InputDecoration(
                          icon: Icon(Icons.email),
                          hintText: "ejemplo@correo.com",
                          labelText: "Email")
                          ),
                  SizedBox(height: 20),
                  TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          icon: Icon(Icons.lock), 
                          labelText: "Password")
                          ),
                  SizedBox(height: 10),
                  Container(
                    alignment: Alignment.centerRight,
                    child: Text(
                      "Forgot Password?",
                    )
                  ),
                  SizedBox(height: 40),
                  Container(
                    padding: EdgeInsets.symmetric(vertical:20),
                    width: double.infinity,
                    child: ElevatedButton(
                      child: Text(
                        "Login"
                      ),
                      onPressed: (){
                        _add(context);
                      },
                      ),                     
                  ),
                  SizedBox(height: 40),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text("Dnon't Have an account?"),
                      Text("Sign Up",
                        style: TextStyle(
                          color: Colors.blue
                        ),
                        textAlign: TextAlign.justify,
                      )
                    ]
                  )
                  
                ],
              ),
            ),
          )
        );
  }

  void _add(BuildContext context) {
    final route = MaterialPageRoute(builder: (BuildContext context){
      return MyHomePage();
    });
    Navigator.of(context).push(route);
}

}