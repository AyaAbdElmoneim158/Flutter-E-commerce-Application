part of 'auth_cubit.dart';

abstract class AuthState extends Equatable {
  const AuthState();
  @override
  List<Object> get props => [];
}

final class AuthInitial extends AuthState {}

class LoginUserLoadingState extends AuthState {}

class LoginUserSuccessState extends AuthState {}

class LoginUserErrorState extends AuthState {
  final String error;
  const LoginUserErrorState({required this.error});
}

class RegisterUserLoadingState extends AuthState {}

class RegisterUserSuccessState extends AuthState {}

class RegisterUserErrorState extends AuthState {
  final String error;
  const RegisterUserErrorState({required this.error});
}

class SignInUserWithGoogleLoadingState extends AuthState {}

class SignInUserWithGoogleSuccessState extends AuthState {}

class SignInUserWithGoogleErrorState extends AuthState {
  final String error;
  const SignInUserWithGoogleErrorState({required this.error});
}

class ResetPasswordLoadingState extends AuthState {}

class ResetPasswordSuccessState extends AuthState {}

class ResetPasswordErrorState extends AuthState {
  final String error;
  const ResetPasswordErrorState({required this.error});
}

class LogoutLoadingState extends AuthState {}

class LogoutSuccessState extends AuthState {}

class LogoutErrorState extends AuthState {
  final String error;
  const LogoutErrorState({required this.error});
}

class AuthStateLoadingState extends AuthState {}

class AuthStateSuccessState extends AuthState {
  final Stream<User?> authStateStream;
  const AuthStateSuccessState({required this.authStateStream});
}

class AuthStateErrorState extends AuthState {
  final String error;
  const AuthStateErrorState({required this.error});
}
