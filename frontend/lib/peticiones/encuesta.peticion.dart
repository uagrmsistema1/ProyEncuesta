

import 'dart:convert';

import 'package:crud_en_flutter/modelos/encuesta.model.dart';
import 'package:flutter/foundation.dart';

import 'package:http/http.dart' as http;

import '../modelos/encuesta.model.dart';
//import '../modelos/encuesta.model.dart';
//import '../modelos/encuesta.model.dart';

Future<List<Encuesta>> listEncuestas() async {
  final response = await http.get(Uri.parse('http://192.168.0.10:4000/api/encuestas'));

  return compute(decodeJson, response.body);
}

List<Encuesta> decodeJson(String responseBody){
  
  //Aqui convertimos el body de la respuesta a un JSON
  final myJson = json.decode(responseBody);

  //Aqui convertimos el Json a un objeto de tipo Encuesta y lo retornamos
  //en este caso es una lista de encuestas
  return myJson['encuestas']
  .map<Encuesta>((json) => Encuesta.fromJson(json))
  .toList();
}