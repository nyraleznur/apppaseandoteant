import 'dart:convert';
class Usuario{
  var _id;
  var _nombre;
  var _apellido;
  var _correo;
  var _celular;

  Usuario(this._id, this._nombre, this._apellido, this._correo, this._celular);

  Usuario.Empty();
Usuario.fromJson(Map<String, dynamic> json):
    _id=json['id'],
    _nombre=json['nombre'],
   _apellido=json['apellido'],
  _correo=json['correo'],
   _celular=json['celular'];

Map<String, dynamic> convertir()=>{
  'id':_id,
  'nombre':_nombre,
  'apellido':_apellido,
  'correo':_correo,
  'celular':_celular
};







  get celular => _celular;

  set celular(value) {
    _celular = value;
  }

  get correo => _correo;

  set correo(value) {
    _correo = value;
  }

  get apellido => _apellido;

  set apellido(value) {
    _apellido = value;
  }

  get nombre => _nombre;

  set nombre(value) {
    _nombre = value;
  }

  get id => _id;

  set id(value) {
    _id = value;
  }
}