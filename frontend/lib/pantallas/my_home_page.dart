import 'package:crud_en_flutter/peticiones/encuesta.peticion.dart';
import 'package:flutter/material.dart';

import '../modelos/encuesta.model.dart';

class MyHomePage extends StatefulWidget {
  final String _title;
  MyHomePage(this._title);
  @override
  State<StatefulWidget> createState() => _MyHomePage();
}

class _MyHomePage extends State<MyHomePage> {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget._title),
      ),
      body: getEncuestas(context, listEncuestas()),
      
    );
  }

  Widget getEncuestas(BuildContext context, Future<List<Encuesta>> futureEncuesta){
    return FutureBuilder(
      future: futureEncuesta,
      builder: (BuildContext context,AsyncSnapshot snapshot){
        switch(snapshot.connectionState){
          case ConnectionState.waiting:
            return Center(child: CircularProgressIndicator());

          case ConnectionState.done:
            if (snapshot.hasError) {
              return Container(
                alignment: Alignment.center,
                child: Center(
                  child: Text('Error: ${snapshot.error}'),
                ),
              );
            }
          return (snapshot.data != null) ?
                  encuestaList(snapshot.data):
                  Container(
                    alignment: Alignment.center,
                    child: Center(
                      child: Text('Sin Datos'),
                    ),
                  );
          default: 
            return Text('Recargar la pantalla nuevamente....!');
        }
      },
    );
  }

  Widget encuestaList(List<Encuesta> encuestas){
    return ListView.builder(
        itemCount: encuestas.length,
        itemBuilder: (context, index) {
          return ListTile(
            onTap: () {
              
            },
            
            
            title: Text(encuestas[index].titulo),        
            
            subtitle: Text(encuestas[index].descripcion),
           
            
          );
          
        },
      );

  
  }
}


