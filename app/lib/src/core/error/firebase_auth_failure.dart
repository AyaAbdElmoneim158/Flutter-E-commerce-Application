import 'package:app/src/core/error/i_failures.dart';
import 'package:firebase_auth/firebase_auth.dart';

class FirebaseAuthFailure extends IFailure {
  FirebaseAuthFailure(super.errMessage);

  factory FirebaseAuthFailure.fromFirebaseAuth(FirebaseAuthException ex) {
    switch (ex.code) {
      case 'wrong-password':
        return FirebaseAuthFailure('Invalid password. Please try again.');
      case 'invalid-email':
        return FirebaseAuthFailure(
            'Invalid email address. Please check the email format.');
      case 'user-disabled':
        return FirebaseAuthFailure('This account has been disabled.');
      case 'user-not-found':
        return FirebaseAuthFailure('User not found. Please check the email address.');
      case 'email-already-in-use':
        return FirebaseAuthFailure(
            'Email is already in use. Please choose a different email.');
      case 'operation-not-allowed':
        return FirebaseAuthFailure('This operation is not allowed.');
      case 'weak-password':
        return FirebaseAuthFailure('Weak password. Please choose a stronger password.');
      case 'account-exists-with-different-credential':
        return FirebaseAuthFailure(
            'An account with a different credential already exists.');
      case 'invalid-credential':
        return FirebaseAuthFailure('Invalid credential.');
      case 'invalid-verification-code':
        return FirebaseAuthFailure('Invalid verification code.');
      case 'invalid-verification-id':
        return FirebaseAuthFailure('Invalid verification ID.');
      case 'user-mismatch':
        return FirebaseAuthFailure('User mismatch.');
      case 'expired-action-code':
        return FirebaseAuthFailure('The action code has expired.');
      case 'ERROR_OPERATION_NOT_ALLOWED':
        return FirebaseAuthFailure('Operation not allowed.');
      default:
        return FirebaseAuthFailure('An unexpected error occurred.');
    }
  }
}
