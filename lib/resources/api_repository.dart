import 'package:ftips_bloc_fetch_api/models/covid_model.dart';
import 'package:ftips_bloc_fetch_api/resources/api_provider.dart';

class ApiRepository {
  final _provider = ApiProvider();

  Future<CovidModel> fetchCovidList() {
    return _provider.fetchCovidList();
  }
}

class NetworkError extends Error {}
