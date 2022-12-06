import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:water_tracker/data/repository/repository.dart';
import 'package:water_tracker/presentation/screens/sing_in_screen/bloc/sign_in_event.dart';
import 'package:water_tracker/presentation/screens/sing_in_screen/bloc/sign_in_state.dart';

class SignInBloc extends Bloc<SignInEvent, SignInState> {
  Repository repository;

  SignInBloc(this.repository) : super(InitialSignInState()) {
    on<SignInUserEvent>((event, emit) async {
      try {
        emit(LoadingSignInState());
        await repository.loginUser(event.email, event.password);
        emit(SuccessfullySingInState());
      } catch (e) {
        emit(ErrorSignInState(e));
      }
    });
  }
}
