import 'package:ejemplo_login/pages/cambiar_contrase%C3%B1a_page.dart';
import 'package:ejemplo_login/pages/cambiar_descripcion_page.dart';
import 'package:ejemplo_login/pages/login_page.dart';
import 'package:flutter/material.dart';
import 'package:share/share.dart';

class Description extends StatelessWidget {
  final String imagePath;

  const Description({Key key, this.imagePath}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[400],
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: AppBar(
            title: Text(
              "Description",
              style: TextStyle(fontSize: 20),
              textAlign: TextAlign.end,
            ),
            actions: [
              IconButton(
                icon: Icon(Icons.add),
                onPressed: () {
                  _add(context);
                },
              )
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
                          Container(
                              height: 300,
                              decoration: BoxDecoration(
                                  borderRadius: new BorderRadius.circular(40),
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          "https://th.bing.com/th/id/Rce6b5cb194a8befbae168ad088c285f6?rik=bnLWUVc24SuNUw&pid=ImgRaw")))),
                          Text(
                            "Rick",
                            style: TextStyle(
                                fontFamily: "dancingScript",
                                color: Colors.green,
                                fontSize: 45),
                          ),
                          SizedBox(height: 20),
                          Text(
                            "Rick Sánchez de la dimensión de la Tierra C-137 es el padre de Beth Smith, y el abuelo de Morty Smith y Summer Smith. Se dice que estuvo alejado de su familia durante varios años antes de los acontecimientos del programa. Viaja frecuentemente en aventuras por el espacio y otros planetas y dimensiones con su nieto Morty.",
                            style: TextStyle(
                              fontSize: 30,
                              fontFamily: "dancingScript",
                            ),
                          ),
                          SizedBox(height: 20),
                          FlatButton(
                            child: Icon(Icons.share),
                            onPressed: () {
                              Share.share(
                                  "Mira esta Descripcion en nuestra App");
                            },
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
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.menu),
          onPressed: () {
            _showModalBottomSheet(context);
          },
        ));
  }

  Widget _getDrawer(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(color: Colors.green),
            child: Row(
              children: [
                Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                        borderRadius: new BorderRadius.circular(40),
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://i1.rgstatic.net/ii/profile.image/280041859633152-1443778590014_Q512/Terrence_Bell.jpg")))),
                Text("  David Castaño")
              ],
            ),
          ),
          ListTile(
            title: Text(
              "Rick",
              style: TextStyle(fontSize: 20),
            ),
            onTap: () {
              _descripcion(context);
            },
            leading: Icon(Icons.person),
          ),
          ListTile(
            title: Text(
              "Morty",
              style: TextStyle(fontSize: 20),
            ),
            onTap: () {
              _descripcion(context);
            },
            leading: Icon(Icons.person),
          ),
          ListTile(
            title: Text(
              "Summer",
              style: TextStyle(fontSize: 20),
            ),
            onTap: () {
              _descripcion(context);
            },
            leading: Icon(Icons.person),
          ),
          ListTile(
            title: Text(
              "Beth",
              style: TextStyle(fontSize: 20),
            ),
            onTap: () {
              _descripcion(context);
            },
            leading: Icon(Icons.person),
          ),
          ListTile(
            title: Text(
              "Jerry",
              style: TextStyle(fontSize: 20),
            ),
            onTap: () {
              _descripcion(context);
            },
            leading: Icon(Icons.person),
          ),
          ListTile(
            title: Text(
              "Rick",
              style: TextStyle(fontSize: 20),
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
                  _add(context);
                },
              ),
            ],
          );
        });
  }
}

void _add(BuildContext context) {
  final route = MaterialPageRoute(builder: (BuildContext context) {
    return Login();
  });
  Navigator.of(context).push(route);
}

void _cambiar_contra(BuildContext context) {
  final route = MaterialPageRoute(builder: (BuildContext context) {
    return CamContrasena();
  });
  Navigator.of(context).push(route);
}

void _descripcion(BuildContext context) {
  final route = MaterialPageRoute(builder: (BuildContext context) {
    return Description();
  });
  Navigator.of(context).push(route);
}

void _cambiar_descrip(BuildContext context) {
  final route = MaterialPageRoute(builder: (BuildContext context) {
    return DescriptionEdit();
  });
  Navigator.of(context).push(route);
}
