part of 'latihanpertamabloc_bloc.dart';
// @immutable
// abstract class LatihanpertamablocEvent {
//   const LatihanpertamablocEvent();
// }

abstract class LatihanpertamablocEvent extends Equatable {
  const LatihanpertamablocEvent();

  @override
  List<Object> get props => [];
}

// @immutable
class EventPerubahText extends LatihanpertamablocEvent {}

// @immutable
class GetDataEvent extends LatihanpertamablocEvent {}
