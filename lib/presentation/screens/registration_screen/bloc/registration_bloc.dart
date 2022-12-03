import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:water_tracker/data/repository/repository.dart';
import 'package:water_tracker/presentation/screens/registration_screen/bloc/registration_events.dart';
import 'package:water_tracker/presentation/screens/registration_screen/bloc/registration_state.dart';

class RegistrationBloc extends Bloc<RegistrationEvent, RegistrationState> {
  Repository repository;

  RegistrationBloc(this.repository) : super(InitialRegistrationState()) {
    on<CreateUserEvent>((event, emit) async {
      try {
        repository.registerUser(event.password, event.email);
      } catch (e) {
        emit(ErrorRegistrationState(e));
      }
    });
    on<LoadedRegistrationEvent>((event, emit) async {
      try {
        emit(LoadingRegistrationState());
        emit(LoadedRegistrationState());
      } catch (e) {
        emit(ErrorRegistrationState(e));
      }
    });
  }
}
