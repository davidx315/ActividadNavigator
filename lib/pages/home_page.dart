import 'package:ejemplo_login/pages/cambiar_contrase%C3%B1a_page.dart';
import 'package:ejemplo_login/pages/cambiar_descripcion_page.dart';
import 'package:ejemplo_login/pages/description_page.dart';
import 'package:ejemplo_login/pages/login_page.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[400],

        appBar: PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: AppBar(
            title: Text(
              "Home",
              style: TextStyle(
                fontSize: 20
              ),
              textAlign: TextAlign.end,
            ),
            actions: [
              IconButton(icon: Icon(Icons.add), onPressed: (){
                        _add(context);
                      },)
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
                    Container(
                      width: 400,
                      child: Column(
                      children: [
                        SizedBox(height: 10),
                        Text("Bienvenidos",
                          style: TextStyle(
                          fontFamily: "dancingScript",
                          color: Colors.green,
                          fontSize: 45
                        ),
                      ),
                      SizedBox(height: 20),
                      Text("La fórmula general en Rick y Morty consiste en la yuxtaposición de dos escenarios que confluyen. Por un lado se muestran las aventuras que vive un abuelo extremadamente egoísta y alcohólico por lo vasto y desconocido del espacio intergaláctico o interdimensional, el cual arrastra a su nieto para que viaje con él.",
                        style: TextStyle(
                          fontSize: 30,
                          fontFamily: "dancingScript",
                        ),
                        
                      )
                    ],
                    ),
                    ),
                  ],
                ),
              ),
            ),
          ],

        ),
        drawer: _getDrawer(context),
        floatingActionButton : FloatingActionButton(
          child: Icon(Icons.menu),
          onPressed: (){
            _showModalBottomSheet(context);
          },
        )
      );
  }

   Widget _getDrawer(BuildContext context){
      return Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.green
              ),
              child: Row(
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius: new BorderRadius.circular(40),
                      image: DecorationImage(
                        image: NetworkImage("https://i1.rgstatic.net/ii/profile.image/280041859633152-1443778590014_Q512/Terrence_Bell.jpg")
                      )
                    )
                  ),
                  Text("  David Castaño")
                ],
              ),

            ),
            ListTile(
              title: Text("Rick",
                style: TextStyle(
                fontSize: 20
                ),
              ), 
                onTap: () {
                  _descripcion(context);
                },
                leading: Icon(Icons.person),                
            ),
            ListTile(
              title: Text("Morty",
                style: TextStyle(
                fontSize: 20
                ),
              ), 
                onTap: () {
                  _descripcion(context);
                },
                leading: Icon(Icons.person),                    
            ),
            ListTile(
              title: Text("Summer",
                style: TextStyle(
                fontSize: 20
                ),
              ), 
                onTap: () {
                  _descripcion(context);
                }, 
                leading: Icon(Icons.person),                   
            ),   
            ListTile(
              title: Text("Beth",
                style: TextStyle(
                fontSize: 20
                ),
              ), 
                onTap: () {
                  _descripcion(context);
                },       
                leading: Icon(Icons.person),             
            ),
            ListTile(
              title: Text("Jerry",
                style: TextStyle(
                fontSize: 20
                ),
              ), 
                onTap: () {
                  _descripcion(context);
                },   
                leading: Icon(Icons.person),                 
            ),
            ListTile(
              title: Text("Rick",
                style: TextStyle(
                fontSize: 20
                ),
              ), 
                onTap: () {
                  _descripcion(context);
                }, 
                leading: Icon(Icons.person),                   
            ),
          ],
        ),
      );
    }

void _showModalBottomSheet(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                leading: new Icon(Icons.edit),
                title: new Text('Cambiar Contraseña'),
                onTap: () {
                  _cambiar_contra(context);
                },
              ),
              ListTile(
                leading: new Icon(Icons.delete),
                title: new Text('Cambiar Descripcion'),
                onTap: () {
                  _cambiar_descrip(context);
                },
              ),
              ListTile(
                leading: new Icon(Icons.share),
                title: new Text('Agregar Foto'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          );
        });
  } 

}

  void _add(BuildContext context) {
    final route = MaterialPageRoute(builder: (BuildContext context){
      return Login();
    });
    Navigator.of(context).push(route);
}

  void _cambiar_contra(BuildContext context) {
    final route = MaterialPageRoute(builder: (BuildContext context){
      return CamContrasena();
    });
    Navigator.of(context).push(route);
}

  void _descripcion(BuildContext context) {
    final route = MaterialPageRoute(builder: (BuildContext context){
      return Description();
    });
    Navigator.of(context).push(route);
}

void _cambiar_descrip(BuildContext context){
    final route = MaterialPageRoute(builder: (BuildContext context){
      return DescriptionEdit();
    });
    Navigator.of(context).push(route);
}

