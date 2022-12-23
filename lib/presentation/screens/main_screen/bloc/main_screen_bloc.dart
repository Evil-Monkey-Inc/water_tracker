import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:water_tracker/data/repository/repository.dart';
import 'package:water_tracker/presentation/screens/main_screen/bloc/main_screen_event.dart';
import 'package:water_tracker/presentation/screens/main_screen/bloc/main_screen_state.dart';

class MainScreenBloc extends Bloc<MainScreenEvent, CounterState> {
  final Repository repository;

  MainScreenBloc(this.repository) : super(CounterState(counter: 0)) {
    on<SaveCounterEvent>((event, emit) async {
      try {
        await repository.saveCupCount(state.counter + 1);
      } catch (e) {
        print(e);
      }
    });
    on<AppLaunchEvent>((event, emit) async {
      final result = await repository.getCupCount(DateTime.now());
      emit(CounterState(counter: result!));
    });
  }
}
