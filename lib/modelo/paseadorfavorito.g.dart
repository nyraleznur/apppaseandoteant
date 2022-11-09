// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paseadorfavorito.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class PaseadorfAdapter extends TypeAdapter<Paseadorf> {
  @override
  final int typeId = 0;

  @override
  Paseadorf read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Paseadorf()
      ..id = fields[0] as String?
      ..nombre = fields[1] as String?
      ..apellido = fields[2] as String?
      ..correo = fields[3] as String?
      ..celular = fields[4] as String?
      ..descrpcion = fields[5] as String?;
  }

  @override
  void write(BinaryWriter writer, Paseadorf obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.nombre)
      ..writeByte(2)
      ..write(obj.apellido)
      ..writeByte(3)
      ..write(obj.correo)
      ..writeByte(4)
      ..write(obj.celular)
      ..writeByte(5)
      ..write(obj.descrpcion);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PaseadorfAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
