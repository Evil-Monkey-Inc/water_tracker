import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:water_tracker/data/repository/repository.dart';
import 'package:water_tracker/data/repository/repository_impl.dart';
import 'package:water_tracker/presentation/screens/sign_up_screen/bloc/sign_up_event.dart';
import 'package:water_tracker/presentation/screens/sign_up_screen/bloc/sign_up_state.dart';

class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  SignUpBloc(this.repository, [this.repositoryImpl]) : super(InitialSignUpState()) {
    on<CreateUserEvent>((event, emit) async {
      try {
        emit(LoadingSignUpState());
        final isSuccess = await repository.registerUser(event.password, event.email);
        repositoryImpl!.userEmail = event.email;
        emit(isSuccess ? SuccessfullySignUpState() : ErrorRegistrationState(Exception()));
      } catch (e) {
        emit(ErrorRegistrationState(e));
      }
    });
  }
  final Repository repository;
  final RepositoryImpl? repositoryImpl;
}
