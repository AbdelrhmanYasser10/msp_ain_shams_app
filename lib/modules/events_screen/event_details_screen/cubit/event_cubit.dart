import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../models/event_model/event_model.dart';
import '../../../../shared/network/remote/dio_helper/dio_helper.dart';

part 'event_state.dart';

class EventCubit extends Cubit<EventState> {
  EventCubit() : super(EventInitial());

  static EventCubit  get(context)=>BlocProvider.of(context);

  List<EventModel> eventModel = [];

  void getAllEvents(){

    emit(EventLoadingDataFromServer());

    DioHelper.getData(
        type: 'Events End Point' //TODO :: Add events endpoint here
    ).then((value){
      value.data.forEach((element){
        eventModel.add(EventModel.fromJson(element));
      });
      emit(EventsGetDataSuccessFully());
    }).catchError((error){
      emit(EventsGetDataError());
    });
  }
}
