import 'package:app/src/features/auth/data/i_auth_services.dart';
import 'package:app/src/features/auth/data/auth_services.dart';

import 'package:equatable/equatable.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());
  static AuthCubit get(context) => BlocProvider.of(context);
  IAuthService authService = AuthService();
  String uid = '';

  Future<void> loginUser({
    required String email,
    required String password,
  }) async {
    emit(LoginUserLoadingState());
    var res = await authService.login(email: email, password: password);
    res.fold(
      (left) {
        debugPrint('loginUser: Failure   ${left.errMsg}');
        emit(LoginUserErrorState(error: left.errMsg));
      },
      (right) {
        uid = right.uid;
        debugPrint('loginUser: Successfully ');
        emit(LoginUserSuccessState());
      },
    );
  }

  Future<void> registerUser({
    required String email,
    required String password,
    required String name,
  }) async {
    emit(RegisterUserLoadingState());
    var res = await authService.register(
      email: email,
      password: password,
      name: name,
    );
    res.fold(
      (left) {
        debugPrint('registerUser: Failure ${left.errMsg}');
        emit(RegisterUserErrorState(error: left.errMsg));
      },
      (right) {
        uid = right.uid;
        debugPrint('registerUser: Successfully user with email ${right.email}');
        emit(RegisterUserSuccessState());
      },
    );
  }

  Future<void> signInUserWithGoogle() async {
    emit(SignInUserWithGoogleLoadingState());
    var res = await authService.signInWithGoogle();
    res.fold(
      (left) {
        debugPrint('signInUserWithGoogle: Failure ${left.errMsg}');
        emit(SignInUserWithGoogleErrorState(error: left.errMsg));
      },
      (right) {
        debugPrint(
            'signInUserWithGoogle: Successfully user with email ${right.email}');
        emit(SignInUserWithGoogleSuccessState());
      },
    );
  }

  Future<void> resetPassword({
    required String email,
  }) async {
    emit(ResetPasswordLoadingState());
    var res = await authService.resetPassword(email: email);
    res.fold(
      (left) {
        debugPrint('resetPassword: Failure ${left.errMsg}');
        emit(ResetPasswordErrorState(error: left.errMsg));
      },
      (right) {
        debugPrint('resetPassword: Successfully  $right');
        emit(ResetPasswordSuccessState());
      },
    );
  }

  Future<void> logout() async {
    emit(LogoutLoadingState());
    var res = await authService.logout();
    res.fold(
      (left) {
        debugPrint('Logout: Failure ${left.errMsg}');
        emit(LogoutErrorState(error: left.errMsg));
      },
      (right) {
        debugPrint('Logout: Successfully  $right');
        emit(LogoutSuccessState());
      },
    );
  }

  Future<void> authState() async {
    emit(AuthStateLoadingState());
    var res = await authService.authState();
    res.fold(
      (left) {
        debugPrint('AuthState: Failure ${left.errMsg}');
        emit(AuthStateErrorState(error: left.errMsg));
      },
      (right) {
        debugPrint('AuthState: Successfully  $right');
        emit(AuthStateSuccessState(authStateStream: right));
      },
    );
  }
}
