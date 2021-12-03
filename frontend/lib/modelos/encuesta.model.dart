import '../pantallas/my_home_page.dart';

class Encuesta {
  var id;
  var titulo;
  var descripcion;
  var estado;
  var fechaIni;
  var fechaFin;

  Encuesta({this.id, this.titulo, this.descripcion, this.estado, this.fechaIni, this.fechaFin});

  factory Encuesta.fromJson(Map<String, dynamic> json){
    return Encuesta(
      id: json['_id'],
      titulo: json['titulo'],
      descripcion: json['descripcion'],
      estado: json['estado'],
      fechaIni: json['fecha_ini'],
      fechaFin: json['fecha_fin']
    );
  }
}