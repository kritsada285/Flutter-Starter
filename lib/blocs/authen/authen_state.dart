part of 'authen_bloc.dart';

abstract class AuthenState extends Equatable {
  const AuthenState();
}

class AuthenInitial extends AuthenState {
  @override
  List<Object> get props => [];
}

class AuthenSuccessState extends AuthenState {
  final Authen authen;

  const AuthenSuccessState({required this.authen});

  AuthenSuccessState copyWith({Authen? authen}) {
    return AuthenSuccessState(authen: authen ?? this.authen);
  }

  @override
  List<Object> get props => [authen];
}

class AuthenErrorState extends AuthenState {
  final ErrorResponse error;

  const AuthenErrorState({required this.error});

  AuthenErrorState copyWith({ErrorResponse? error}) {
    return AuthenErrorState(error: error ?? this.error);
  }

  @override
  List<Object> get props => [error];
}

class AuthenLoadingState extends AuthenState {
  @override
  List<Object?> get props => [];
}