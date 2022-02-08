import 'package:dio/dio.dart';

class FetchVideoRemoteData {
  Dio api = Dio();

  Future<void> downloadFile() async {
    var response = await api.get('https://api.mux.com/video/v1/assets/video/v1/assets');
  }
}
