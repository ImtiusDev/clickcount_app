part of 'counter_bloc.dart';

sealed class CounterEvent {}

class IncrementCountEvent extends CounterEvent{}
class DecrementCountEvent extends CounterEvent{}
class ResetCountEvent extends CounterEvent{}