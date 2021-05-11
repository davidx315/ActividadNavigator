import 'package:ejemplo_login/pages/cambiar_contrase%C3%B1a_page.dart';
import 'package:ejemplo_login/pages/description_page.dart';
import 'package:ejemplo_login/pages/login_page.dart';
import 'package:flutter/material.dart';
import 'package:share/share.dart';

class DescriptionEdit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                                        "https://th.bing.com/th/id/Rce6b5cb194a8befbae168ad088c285f6?rik=bnLWUVc24SuNUw&pid=ImgRaw")))
                        ),
                        SizedBox(height: 20),
                        TextFormField(
                          decoration: InputDecoration(
                              hintText: 'Rick', 
                              labelText: 'Nombre',
                              border: OutlineInputBorder()
                          ),
                        ),
                        SizedBox(height: 20),
                        TextFormField(
                          maxLines: 10,
                          decoration: InputDecoration(
                              hintText: 'Rick Sánchez de la dimensión de la Tierra C-137 es el padre de Beth Smith, y el abuelo de Morty Smith y Summer Smith. Se dice que estuvo alejado de su familia durante varios años antes de los acontecimientos del programa. Viaja frecuentemente en aventuras por el espacio y otros planetas y dimensiones con su nieto Morty.',
                              labelText: 'Descripcion',
                              border: OutlineInputBorder()
                          ),
                              
                        ),
                        SizedBox(height: 20),
                        Container(
                          padding: EdgeInsets.symmetric(vertical: 20),
                          width: double.infinity,
                          child: ElevatedButton(
                            child: Text("Guardar"),
                            onPressed: () {
                              _descripcion(context);
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

void _add(BuildContext context) {
  final route = MaterialPageRoute(builder: (BuildContext context) {
    return Login();
  });
  Navigator.of(context).push(route);
}

  void _descripcion(BuildContext context) {
    final route = MaterialPageRoute(builder: (BuildContext context){
      return Description();
    });
    Navigator.of(context).push(route);
}
