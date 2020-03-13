import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';

import '../services/CounterService.dart';

@injectable
class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterService counterService;
  CounterBloc(this.counterService);

  @override
  CounterState get initialState => CounterState(counterService.value);

  @override
  Stream<CounterState> mapEventToState(CounterEvent event) async*{
    if(event is IncrementCounterEvent){
      counterService.increment();
      yield CounterState(counterService.value);
    }
  }
}


class CounterState {
  int value;
  CounterState(this.value);
}

abstract class CounterEvent {

}

class IncrementCounterEvent extends CounterEvent {

}