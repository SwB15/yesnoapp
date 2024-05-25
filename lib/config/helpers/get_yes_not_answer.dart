import 'package:dio/dio.dart';
import 'package:yesnoapp/infraestructure/models/yes_not_model.dart';
import '../../domain/entities/message.dart';

class GetYesNotAnswer {
  final dio = Dio();
  Future<Message> getAnswer() async {
    final response = await dio.get('https://yesno.wtf/api');
    final yesNotModel = YesNotModel.fromJsonMap(response.data);
    return yesNotModel.toMessageEntity();
  }
}
