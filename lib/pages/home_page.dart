import 'package:ejemplo_login/pages/login_page.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: AppBar(
            title: Text(
              "Home",
              style: TextStyle(),
              textAlign: TextAlign.end,
            ),
            actions: [
              IconButton(icon: Icon(Icons.add), onPressed: (){
                        _add(context);
                      },)
            ],
          ),
        ),
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Center(
            child: Column(
              children: <Widget>[
                SizedBox(height: 50),
                Container(
                  child: Image.network(
                    "https://www.megaidea.net/wp-content/uploads/2020/03/batman-logo-clipart-1024x612.png",
                    height: 120,
                  ),
                ),
                SizedBox(height: 20),
                Text("HEROS DE GOTHAM",
                    style:
                        TextStyle(fontSize: 25, fontWeight: FontWeight.w900)),
                SizedBox(height: 10),
                Container(
                    child: Row(
                  children: [
                    Image.network(
                      "https://www.gratistodo.com/wp-content/uploads/2017/01/Batman-6.jpg",
                      height: 150,
                      width: 150,
                    ),
                    Column(
                      children: <Widget>[
                        Text(
                          "Batman",
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.w900),
                          textAlign: TextAlign.left,
                        ),
                        Text(
                          "Heroe Principal",
                          style: TextStyle(fontSize: 15),
                          textAlign: TextAlign.left,
                        ),
                      ],
                    ),
                  ],
                )),
                Container(
                    child: Row(
                  children: [
                    Image.network(
                      "https://th.bing.com/th/id/Rec1f757430f1739c6259db14ea43028a?rik=wonbvfyHnjDShg&pid=ImgRaw",
                      height: 150,
                      width: 150,
                    ),
                    Column(
                      children: <Widget>[
                        Text(
                          "Robin",
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.w900),
                          textAlign: TextAlign.left,
                        ),
                        Text(
                          "Ayudante de Batman",
                          style: TextStyle(fontSize: 18),
                          textAlign: TextAlign.left,
                        ),
                      ],
                    ),
                  ],
                )
                ),
                                Container(
                    child: Row(
                  children: [
                    Image.network(
                      "https://th.bing.com/th/id/OIP.gofYKAw4fyryZfYkyVQI3AHaEK?pid=ImgDet&rs=1",
                      height: 150,
                      width: 150,
                    ),
                    Column(
                      children: <Widget>[
                        Text(
                          "Batichica",
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.w900),
                          textAlign: TextAlign.left,
                        ),
                        Text(
                          "Ayudante de Batman",
                          style: TextStyle(fontSize: 18),
                          textAlign: TextAlign.left,
                        ),
                      ],
                    ),
                  ],
                )
                ),
              ],
            ),
          ),
        ));
  }
}

  void _add(BuildContext context) {
    final route = MaterialPageRoute(builder: (BuildContext context){
      return Login();
    });
    Navigator.of(context).push(route);
}
