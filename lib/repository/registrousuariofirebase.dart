import 'package:apppaseandoteant/modelo/usuario.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';


class RegistroUsuarioFireBase{
  Future<String?>registrarUsuario(String email,String password) async{
    try{
      final credencial=await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);
      return credencial.user?.uid;

    }on FirebaseAuthException catch(e){
      print("firebaseAuthExeption${e.code}");
      return e.code;

    }on FirebaseException catch(e){
      return e.code;

    }
  }

  Future <String> crearUsuario(Usuario usuario) async  {
    try{
      final documento=await FirebaseFirestore.instance.collection("usuario").doc(usuario.id).set(usuario.convertir());
      return usuario.id;
    }on FirebaseException catch(e){
      return  e.code;
    }
    
    
  }
}