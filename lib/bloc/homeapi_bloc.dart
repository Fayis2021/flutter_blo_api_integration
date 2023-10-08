import 'package:bloc/bloc.dart';

import '../repository/repository.dart';

part 'homeapi_event.dart';
part 'homeapi_state.dart';

class HomeapiBloc extends Bloc<HomeapiEvent, HomeapiState> {
  HomeapiBloc() : super(HomeapiInitial(apicalltime: false)) {
    on<Homeapicall>((event, emit) async {
      emit(HomeapiState(apicalltime: false));
      final String data = await Apidatafetching.apicallfetchingmydata1();
      emit(HomeapiState(apicalltime: true, apidata: data));
    });
  }
}
