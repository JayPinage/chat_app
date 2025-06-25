import 'package:firebase_auth/firebase_auth.dart';

class AuthRepository {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<void> signup(String email, String password) async {
    try {
      final data = await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      print(data);
    } on FirebaseAuthException catch (e) {
      print(e.toString());
    }
  }

  Future<void> login(String email, String password) async {
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: password);
    } on FirebaseAuthException catch (e) {
      print(e.toString());
    }
  }
}
