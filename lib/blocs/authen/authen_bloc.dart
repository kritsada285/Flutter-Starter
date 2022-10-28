import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:tgv_mobile/models/authen.dart';
import 'package:tgv_mobile/repositories/authen_repository_type.dart';
import 'package:tgv_mobile/services/responses/error_response.dart';

part 'authen_event.dart';

part 'authen_state.dart';

class AuthenBloc extends Bloc<AuthenEvent, AuthenState> {
  final AuthenRepository authenRepository;

  AuthenBloc({required this.authenRepository}) : super(AuthenInitial()) {
    on<FetchAuthen>(_mapFetchAuthenEventToState);
  }

  void _mapFetchAuthenEventToState(
      FetchAuthen event, Emitter<AuthenState> emit) async {

    emit(AuthenLoadingState());

    final response = await authenRepository.authentication(
        event.phoneNo, event.password, '');

    response.fold((error) {
      emit(AuthenErrorState(error: error));
    }, (response) {
      emit(AuthenSuccessState(authen: response));
    });
  }
}
