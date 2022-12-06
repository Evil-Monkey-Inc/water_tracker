import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:water_tracker/data/repository/repository.dart';
import 'package:water_tracker/presentation/screens/sign_up_screen/bloc/sign_up_event.dart';
import 'package:water_tracker/presentation/screens/sign_up_screen/bloc/sign_up_state.dart';

class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  Repository repository;

  SignUpBloc(this.repository) : super(InitialSignUpState()) {
    on<CreateUserEvent>((event, emit) async {
      try {
        emit(LoadingSignUpState());
        final isSuccess = await repository.registerUser(event.password, event.email);
        emit(isSuccess ? SuccessfullySignUpState() : ErrorRegistrationState(Exception()));
      } catch (e) {
        emit(ErrorRegistrationState(e));
      }
    });
  }
}
