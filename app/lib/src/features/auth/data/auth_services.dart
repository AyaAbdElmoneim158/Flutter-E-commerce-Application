import 'package:app/src/core/error/firebase_auth_failure.dart';
import 'package:app/src/core/error/i_failures.dart';
import 'package:app/src/core/helper/auth_helper.dart';
import 'package:app/src/core/helper/firestore_helper.dart';
import 'package:app/src/features/auth/data/i_auth_services.dart';
import 'package:app/src/features/auth/model/user_model.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';

//! Unit ~> return right(null);
class AuthService extends IAuthService {
  AuthHelper auth = AuthHelper.instance;
  FirestoreHelper firestore = FirestoreHelper.instance;
  final _firebaseAuth = FirebaseAuth.instance;

  @override
  Future<Either<IFailure, UserModel>> login({
    required String email,
    required String password,
  }) async {
    try {
      // print("1");
      final response = await _firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      // print("2");

      UserModel user = UserModel(
        uid: response.user!.uid,
        email: response.user!.email,
        name: response.user!.displayName,
        photoURL: response.user!.photoURL,
      );
      return right(user);
    } on FirebaseAuthException catch (err) {
      return left(FirebaseAuthFailure.fromFirebaseAuth(err));
    } catch (err) {
      return left(FirebaseAuthFailure(err.toString()));
    }
  }

  @override
  Future<Either<IFailure, UserModel>> register({
    required String email,
    required String password,
    required String name,
  }) async {
    try {
      final response = await auth.signUpWithEmailAndPassword(
        email,
        password,
      );
      response!.updateDisplayName(name);

      UserModel user = UserModel(
        uid: response.uid,
        email: response.email,
        name: response.displayName,
        photoURL: response.photoURL,
      );

      try {
        //path: 'users/',
        firestore.setData(path: "User/${response.uid}", data: user.toJson());
      } catch (err) {
        return left(FirebaseAuthFailure(err.toString()));
      }
      return right(user);
    } on FirebaseAuthException catch (err) {
      return left(FirebaseAuthFailure.fromFirebaseAuth(err));
    } catch (err) {
      return left(FirebaseAuthFailure(err.toString()));
    }
  }

  @override
  Future<Either<IFailure, UserModel>> signInWithGoogle() async {
    try {
      final response = await auth.signInWithGoogle();
      UserModel user = UserModel(
        uid: response.user!.uid,
        email: response.user!.email,
        name: response.user!.displayName,
        photoURL: response.user!.photoURL,
      );
      return right(user);
    } on FirebaseAuthException catch (err) {
      return left(FirebaseAuthFailure.fromFirebaseAuth(err));
    } catch (err) {
      return left(FirebaseAuthFailure(err.toString()));
    }
  }

  @override
  Future<Either<IFailure, bool>> resetPassword({
    required String email,
  }) async {
    try {
      await auth.passwordReset(email); //! return void

      return right(true);
    } on FirebaseAuthException catch (err) {
      return left(FirebaseAuthFailure.fromFirebaseAuth(err));
    } catch (err) {
      return left(FirebaseAuthFailure(err.toString()));
    }
  }

  @override
  Future<Either<IFailure, bool>> logout() async {
    try {
      await auth.logout(); //! return void

      return right(true);
    } on FirebaseAuthException catch (err) {
      return left(FirebaseAuthFailure.fromFirebaseAuth(err));
    } catch (err) {
      return left(FirebaseAuthFailure(err.toString()));
    }
  }

  @override
  Future<Either<IFailure, Stream<User?>>> authState() async {
    try {
      final response = auth.authStateChanges();

      return right(response);
    } on FirebaseAuthException catch (err) {
      return left(FirebaseAuthFailure.fromFirebaseAuth(err));
    } catch (err) {
      return left(FirebaseAuthFailure(err.toString()));
    }
  }
}
