part of 'homeapi_bloc.dart';

class HomeapiState {
  final bool? apicalltime;
  final String? apidata;

  HomeapiState({required this.apicalltime, this.apidata});
}

class HomeapiInitial extends HomeapiState {
  HomeapiInitial({required super.apicalltime});
}
