
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(const CounterState(teamAPoints: 0, teamBPoints: 0));


  void teamCounter({required String team, required int buttonNumber}) {
    if (team == "A") {
      emit(CounterState(
          teamAPoints: state.teamAPoints + buttonNumber,
          teamBPoints: state.teamBPoints));
    } else if (team == "B") {
      emit(CounterState(
          teamAPoints: state.teamAPoints,
          teamBPoints: state.teamBPoints + buttonNumber));
    }
  }

    void resetPoints() {
    emit(const CounterState(teamAPoints: 0, teamBPoints: 0));
  }


}
