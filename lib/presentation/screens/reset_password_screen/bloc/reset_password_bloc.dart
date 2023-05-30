import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:water_tracker/data/repository/repository.dart';
import 'package:water_tracker/presentation/screens/reset_password_screen/bloc/reset_password_event.dart';
import 'package:water_tracker/presentation/screens/reset_password_screen/bloc/reset_password_state.dart';

class ResetPasswordBloc extends Bloc<ResetPasswordEvent, ResetPasswordState> {
  ResetPasswordBloc(this.repository) : super(InitialResetPasswordState()) {
    on<ForgotPasswordEvent>((event, emit) async {
      try {
        emit(LoadingResetPasswordState());
        final isSuccess = await repository.resetPassword(event.email);
        emit(
          isSuccess
              ? SuccessfullyResetPasswordState()
              : ErrorResetPasswordState(Exception()),
        );
      } catch (e) {
        emit(ErrorResetPasswordState(e));
      }
    });
  }

  final Repository repository;
}
