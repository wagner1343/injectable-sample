
import 'package:injectable/injectable.dart';

abstract class CounterService {
  int get value;
  void increment();
}

abstract class IncrementService {
  int get increment;
}

@RegisterAs(CounterService)
@injectable
class DefaultCounter implements CounterService {
  int _value = 0;
  IncrementService incrementService;
  DefaultCounter(this.incrementService);

  @override
  void increment() {
    _value += incrementService.increment;
  }

  @override
  int get value => _value;
}

@RegisterAs(IncrementService)
@injectable
class DefaultIncrementService implements IncrementService {
  @override
  int get increment => 3;
}