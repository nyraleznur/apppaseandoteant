import 'package:hive/hive.dart';


part 'paseadorfavorito.g.dart' ;

@HiveType(typeId: 0)
class Paseadorf extends HiveObject{

  @HiveField(0)
  String? id;
  @HiveField(1)
  String? nombre;
  @HiveField(2)
  String? apellido;
  @HiveField(3)
  String? correo;
  @HiveField(4)
  String? celular;
  @HiveField(5)
  String? descrpcion;



}