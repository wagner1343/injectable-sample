// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:injectable_counter/services/CounterService.dart';
import 'package:injectable_counter/blocs/counter_bloc.dart';
import 'package:get_it/get_it.dart';

void $initGetIt(GetIt g, {String environment}) {
  g.registerFactory<IncrementService>(() => DefaultIncrementService());
  g.registerFactory<CounterService>(
      () => DefaultCounter(g<IncrementService>()));
  g.registerFactory<CounterBloc>(() => CounterBloc(g<CounterService>()));
}