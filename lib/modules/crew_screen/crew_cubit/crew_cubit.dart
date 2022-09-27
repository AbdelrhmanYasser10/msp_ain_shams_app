import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'crew_state.dart';

class CrewCubit extends Cubit<CrewState> {
  CrewCubit() : super(CrewInitial());
  static CrewCubit get(context)=> BlocProvider.of(context);
  TextEditingController adminCodeController = TextEditingController();
}
