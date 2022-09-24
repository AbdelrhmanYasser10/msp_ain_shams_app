part of 'event_cubit.dart';

abstract class EventState {}

class EventInitial extends EventState {}

class EventsGetDataSuccessFully extends EventState {}
class EventLoadingDataFromServer extends EventState {}
class EventsGetDataError extends EventState {}