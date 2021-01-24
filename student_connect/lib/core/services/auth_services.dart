import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:student_connect/core/models/student.dart';
import 'package:student_connect/core/services/firebase_database_services.dart';

class AuthService {
  final _auth = FirebaseAuth.instance;
  final _dbService = FirebaseDatabaseServices();

  Future<AuthResponse> login(email, password) async {
    try {
      final credentials = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      if (credentials.user != null) {
        /// Login success
        return AuthResponse(success: true);
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        return AuthResponse(
            success: false, message: 'No user found for that email.');
      } else if (e.code == 'wrong-password') {
        return AuthResponse(success: false, message: 'Wrong password');
      }

//      switch (e.code) {
//        case "email-already-in-use":
//          errorMessage =
//          "The email has already been registered. Please login or reset your password.";
//          break;
//        case "invalid-email":
//          errorMessage = "Your email address appears to be malformed.";
//          break;
//        case "weak-password":
//          errorMessage =
//          "Your password is very weak. Please try a strong password.";
//          break;
//        case "wrong-password":
//          errorMessage = "Your password is wrong.";
//          break;
//        case "user-not-found":
//          errorMessage = "User with this email doesn't exist.";
//          break;
//        case "user-disabled":
//          errorMessage = "User with this email has been disabled.";
//          break;
//        case "operation-not-allowed":
//          errorMessage = "Signing in with Email and Password is not enabled.";
//          break;
//
//      //Todo: Handle no internet exception as well.
//
//        default:
//          errorMessage = "An undefined Error happened.";
//      }
    }
  }

  Future<AuthResponse> createAccount(Student student) async {
    print(student.toJson());
    try {
      final credentials = await _auth.createUserWithEmailAndPassword(
          email: student.email, password: student.password);
      if (credentials.user != null) {
        print('Account created');

        /// Store user account information
        await _dbService.createAccount(student, credentials.user.uid);
        return AuthResponse(success: true);
      }
    } on FirebaseAuthException catch (e) {
      print(e);
      if (e.code == 'weak-password') {
        return AuthResponse(
            success: false,
            message: 'Create account failed due to weak password');
      } else if (e.code == 'invalid-email') {
        return AuthResponse(
            success: false,
            message: 'Create account failed due to invalid email');
      } else {
        return AuthResponse(
            success: false, message: 'Create Account failed for some reason');
      }

//      switch (e.code) {
//        case "email-already-in-use":
//          errorMessage =
//          "The email has already been registered. Please login or reset your password.";
//          break;
//        case "invalid-email":
//          errorMessage = "Your email address appears to be malformed.";
//          break;
//        case "weak-password":
//          errorMessage =
//          "Your password is very weak. Please try a strong password.";
//          break;
//        case "wrong-password":
//          errorMessage = "Your password is wrong.";
//          break;
//        case "user-not-found":
//          errorMessage = "User with this email doesn't exist.";
//          break;
//        case "user-disabled":
//          errorMessage = "User with this email has been disabled.";
//          break;
//        case "operation-not-allowed":
//          errorMessage = "Signing in with Email and Password is not enabled.";
//          break;
//
//      //Todo: Handle no internet exception as well.
//
//        default:
//          errorMessage = "An undefined Error happened.";
//      }
    }
  }

  updateAccount() {}

  logout() {}
}

class AuthResponse {
  bool success;
  String message;

  AuthResponse({this.success, this.message});
}
