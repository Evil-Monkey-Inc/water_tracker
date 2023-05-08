import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:water_tracker/data/repository/repository.dart';
import 'package:water_tracker/presentation/screens/social_sign_up_screen/bloc/social_sign_up_event.dart';
import 'package:water_tracker/presentation/screens/social_sign_up_screen/bloc/social_sign_up_state.dart';

class SocialSignUpBloc extends Bloc<AuthUserEvent, SocialSignUpState> {
  SocialSignUpBloc(this.repository) : super(InitialAuthState()) {
    on<LoginWithGooglePressed>((event, emit) async {
      try {
        emit(LoadingAuthState());
        final isSuccess = await repository.signInWithGoogle(event.email);
        emit(
          isSuccess ? SuccessfullyAuthState() : ErrorAuthState(Exception()),
        );
      } catch (e) {
        emit(ErrorAuthState(e));
      }
    });
  }

  final Repository repository;
}
