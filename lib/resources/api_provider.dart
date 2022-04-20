import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:ftips_bloc_fetch_api/models/covid_model.dart';

class ApiProvider {
  final Dio _dio = Dio();
  final String _url = 'https://api.covid19api.com/summary';

  Future<CovidModel> fetchCovidList() async {
    try {
      Response response = await _dio.get(_url);
      return CovidModel.fromMap(response.data);
    } catch (error, stacktrace) {
      if (kDebugMode) {
        print("Exception occured: $error stackTrace: $stacktrace");
      }
      return CovidModel.withError("Data not found / Connection issue");
    }
  }
}
