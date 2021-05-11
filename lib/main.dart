//import 'dart:js';
import 'package:ejemplo_login/pages/login_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
 // Myapp({Key key}) :super(key:key);

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
        title: 'Login',
        home: Login(),
        theme: ThemeData(
            visualDensity: VisualDensity.adaptivePlatformDensity,
            primarySwatch: Colors.green),
        // Clase 5/11/2021
        // home: Scaffold(
        //     appBar: PreferredSize(
        //       preferredSize: Size.fromHeight(50),
        //       child: AppBar(
        //         title: Text(
        //           "Home",
        //           style: TextStyle(),
        //           textAlign: TextAlign.end,
        //         ),
        //       ),
        //     ),
        //     body:
        //         // Center(
        //         //   child: Container(
        //         //     // definir un color mediante clase siempre se debe iniciar con el 0xff y despues el color
        //         //     color: Color(0XFF2E4E69).withOpacity(0.5),
        //         //     //color: Color(0XFF2E4E69).withAlpha(0xff),
        //         //     height: 200,
        //         //     width: 200,
        //         //     padding: EdgeInsets.all(600),
        //         //   )
        //         // ),
        //         // permite converir un texto o imagen en un boton
        //         Center(
        //       child: Column(
        //         children: <Widget>[
        //           //Convertir en boton poner control shift r en Text
        //           // GestureDetector(
        //           //     onTap: _onTap,
        //           //     onLongPress: _onLongPress,
        //           //     child: Text(
        //           //       "Hola Ingenieros",
        //           //       style: TextStyle(
        //           //         fontSize: 30,
        //           //       ),
        //           //     ))
        //           // SizedBox(height: 10),
        //           // //Tipos de Botones
        //           // RaisedButton(onPressed: _onLongPress,
        //           //   color: Colors.blue,
        //           //   child: Text("Boton RaisedButton"),
        //           //   textColor: Colors.white,
        //           // ),
        //           // FlatButton(onPressed: _onLongPress, 
        //           // child: Text("Boton FlatButton")
        //           // ),
        //           // IconButton(icon:Icon(Icons.delete), 
        //           // onPressed: _onLongPress
        //           // ),
        //           // OutlineButton(onPressed: _onLongPress, child: Text("Boton Out"))
        //           SizedBox(height: 10),
        //           Text("Hola, vamos a hacer la mejor app de bancolombia")
        //         ],
                
        //       ),
              
        //     ),
        //     // Creacion de Menu desplegable a la izq
        //     drawer: _getDrawer(context),
        //     // Aparece en la parte inferior derecha
        //     floatingActionButton : FloatingActionButton(
        //       child: Icon(Icons.menu),
        //       onPressed: _showSnakBar,
        //     )
        //   )
        );

  }
// // Contenido del Menu desplegable
//    Widget _getDrawer(BuildContext context){
//       return Drawer(
//         child: ListView(
//           children: [
//             DrawerHeader(
//               decoration: BoxDecoration(
//                 color: Colors.blue
//               ),
//               child: Row(
//                 children: [
//                   FlutterLogo(
//                     size: 100
//                   ),
//                   Text("Primer Drawer")
//                 ],
//               ),

//             ),
//             ListTile(
//               title: Text("Login",),
//               // 
//               leading: Icon(Icons.home),
//             ),

//           ],
//         ),
//       );
//     }
  // void _showSnakBar(){
  //     SnackBar snackBar = SnackBar(content: Text("Exito"),
  //       action: SnackBarAction(
  //         label: "Cancelar",
  //         onPressed: (){
  //           print("Prueba");
  //         },
  //       ),
  //     );

  //     _scaffkey.currentState._showSnakBar(snackBar);

  // }

}
