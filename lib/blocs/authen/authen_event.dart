part of 'authen_bloc.dart';

abstract class AuthenEvent extends Equatable {
  const AuthenEvent();
}


class FetchAuthen extends AuthenEvent {

  String phoneNo;
  String password;

  FetchAuthen({required this.phoneNo,required this.password});

  @override
  List<Object> get props => [phoneNo,password];
}


class FetchAuthenLoading extends AuthenEvent {
  @override
  List<Object> get props => [];
}
