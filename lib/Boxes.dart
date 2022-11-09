import 'package:apppaseandoteant/modelo/paseadorfavorito.dart';
import 'package:hive_flutter/hive_flutter.dart';

class Boxes{
  static Box<Paseadorf>getfavoritosbox()=>Hive.box<Paseadorf>('bd');
}