import 'package:ejemplo_login/pages/home_page.dart';
import 'package:ejemplo_login/pages/login_page.dart';
import 'package:flutter/material.dart';


class Register extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    
    return Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(50),         
            child: AppBar(                 
              title: Text(
                "Register",
                style: TextStyle(
                  fontSize: 20
                ),
                textAlign: TextAlign.end,
              ),
              actions: [

              ],
              
            ),
          ),
          body: ListView(
            padding: EdgeInsets.symmetric(horizontal: 20),
            children: [
              Container(
                child: Center(
                                child: Column(               
                children: <Widget>[
                  Image.network("https://img2.gratispng.com/20180609/zxv/kisspng-rick-sanchez-morty-smith-rick-and-morty-pocket-li-justin-roiland-5b1c00b8041d56.4424230715285618480169.jpg",
                    
                  ),
                  SizedBox(height: 50),
                  TextField(
                      decoration: InputDecoration(
                          icon: Icon(Icons.email),
                          hintText: "ejemplo@correo.com",
                          labelText: "Email")
                          ),
                  SizedBox(height: 10),
                  TextField(
                      decoration: InputDecoration(
                          icon: Icon(Icons.person), 
                          labelText: "Name")
                          ),
                  SizedBox(height: 10),
                  TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          icon: Icon(Icons.lock), 
                          labelText: "Password")
                          ),
                  SizedBox(height: 10),
                  TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      icon:  Icon(Icons.phone),
                      labelText: "Phone Number"
                    ),
                  ),
                  SizedBox(height: 40),
                  Container(
                    padding: EdgeInsets.symmetric(vertical:20),
                    width: double.infinity,
                    child: ElevatedButton(
                      child: Text(
                        "Register"
                      ),
                      onPressed: (){
                        _add(context);
                      },
                      ),                     
                  ),             
                ],
              ),
                )
              )
            ],
          )
        );
  }
}

  void _add(BuildContext context) {
    final route = MaterialPageRoute(builder: (BuildContext context){
      return MyHomePage();
    });
    Navigator.of(context).push(route);
}