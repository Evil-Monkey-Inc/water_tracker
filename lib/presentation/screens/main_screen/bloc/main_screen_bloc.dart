import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:water_tracker/data/repository/repository.dart';
import 'package:water_tracker/presentation/screens/main_screen/bloc/main_screen_event.dart';
import 'package:water_tracker/presentation/screens/main_screen/bloc/main_screen_state.dart';

class MainScreenBloc extends Bloc<MainScreenEvent, MainScreenState> {
  MainScreenBloc(this.repository) : super(CounterState(0)) {
    on<SaveCounterEvent>((event, emit) async {
      try {
        final newCount = state.counter + 1;
        if (newCount > maxCupCount) return;
        final isSaved = await repository.saveCupCount(repositoryImpl!.userEmail, newCount);
        emit(isSaved ? CounterState(newCount) : ErrorMainScreenState(state.counter));
      } catch (e) {
        ErrorMainScreenState(state.counter);
      }
    });
    on<AppLaunchEvent>((event, emit) async {
      final result = await repository.getCupCount(repositoryImpl!.userEmail, DateTime.now());
      emit(result == null ? ErrorMainScreenState(state.counter) : CounterState(result));
    });
  }

  static const maxCupCount = 8;

  static const singleCupWeight = 250;

  final Repository repository;
}
