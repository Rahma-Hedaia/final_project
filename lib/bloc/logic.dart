import 'dart:convert';
import 'package:final_project/bloc/state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;

class PostCubit extends Cubit<PostState> {
  PostCubit() : super(IntialPost());
  static PostCubit getObject(context) => BlocProvider.of(context);
  List myData = [];
  void getData() async {
    final data =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
    myData = jsonDecode(data.body);
    emit(GetApiData());
  }
}
