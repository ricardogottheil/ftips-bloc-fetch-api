// To parse this JSON data, do
//
//     final covidModel = covidModelFromMap(jsonString);

// ignore_for_file: prefer_if_null_operators, prefer_null_aware_operators

import 'dart:convert';

CovidModel covidModelFromMap(String str) =>
    CovidModel.fromMap(json.decode(str));

String covidModelToMap(CovidModel data) => json.encode(data.toMap());

class CovidModel {
  CovidModel({
    this.id,
    this.message,
    this.global,
    this.countries,
    this.date,
  });

  String? id;
  String? message;
  Global? global;
  List<Country>? countries;
  DateTime? date;
  String? error;

  CovidModel.withError(String errorMessage) {
    error = errorMessage;
  }

  CovidModel copyWith({
    String? id,
    String? message,
    Global? global,
    List<Country>? countries,
    DateTime? date,
  }) =>
      CovidModel(
        id: id ?? this.id,
        message: message ?? this.message,
        global: global ?? this.global,
        countries: countries ?? this.countries,
        date: date ?? this.date,
      );

  factory CovidModel.fromMap(Map<String, dynamic> json) => CovidModel(
        id: json["ID"] == null ? null : json["ID"],
        message: json["Message"] == null ? null : json["Message"],
        global: json["Global"] == null ? null : Global.fromMap(json["Global"]),
        countries: json["Countries"] == null
            ? null
            : List<Country>.from(
                json["Countries"].map((x) => Country.fromMap(x))),
        date: json["Date"] == null ? null : DateTime.parse(json["Date"]),
      );

  Map<String, dynamic> toMap() => {
        "ID": id == null ? null : id,
        "Message": message == null ? null : message,
        "Global": global == null ? null : global?.toMap(),
        "Countries": countries == null
            ? null
            : List<dynamic>.from(countries!.map((x) => x.toMap())),
        "Date": date == null ? null : date?.toIso8601String(),
      };
}

class Country {
  Country({
    this.id,
    this.country,
    this.countryCode,
    this.slug,
    this.newConfirmed,
    this.totalConfirmed,
    this.newDeaths,
    this.totalDeaths,
    this.newRecovered,
    this.totalRecovered,
    this.date,
    this.premium,
  });

  String? id;
  String? country;
  String? countryCode;
  String? slug;
  int? newConfirmed;
  int? totalConfirmed;
  int? newDeaths;
  int? totalDeaths;
  int? newRecovered;
  int? totalRecovered;
  DateTime? date;
  Premium? premium;

  Country copyWith({
    String? id,
    String? country,
    String? countryCode,
    String? slug,
    int? newConfirmed,
    int? totalConfirmed,
    int? newDeaths,
    int? totalDeaths,
    int? newRecovered,
    int? totalRecovered,
    DateTime? date,
    Premium? premium,
  }) =>
      Country(
        id: id ?? this.id,
        country: country ?? this.country,
        countryCode: countryCode ?? this.countryCode,
        slug: slug ?? this.slug,
        newConfirmed: newConfirmed ?? this.newConfirmed,
        totalConfirmed: totalConfirmed ?? this.totalConfirmed,
        newDeaths: newDeaths ?? this.newDeaths,
        totalDeaths: totalDeaths ?? this.totalDeaths,
        newRecovered: newRecovered ?? this.newRecovered,
        totalRecovered: totalRecovered ?? this.totalRecovered,
        date: date ?? this.date,
        premium: premium ?? this.premium,
      );

  factory Country.fromMap(Map<String, dynamic> json) => Country(
        id: json["ID"] == null ? null : json["ID"],
        country: json["Country"] == null ? null : json["Country"],
        countryCode: json["CountryCode"] == null ? null : json["CountryCode"],
        slug: json["Slug"] == null ? null : json["Slug"],
        newConfirmed:
            json["NewConfirmed"] == null ? null : json["NewConfirmed"],
        totalConfirmed:
            json["TotalConfirmed"] == null ? null : json["TotalConfirmed"],
        newDeaths: json["NewDeaths"] == null ? null : json["NewDeaths"],
        totalDeaths: json["TotalDeaths"] == null ? null : json["TotalDeaths"],
        newRecovered:
            json["NewRecovered"] == null ? null : json["NewRecovered"],
        totalRecovered:
            json["TotalRecovered"] == null ? null : json["TotalRecovered"],
        date: json["Date"] == null ? null : DateTime.parse(json["Date"]),
        premium:
            json["Premium"] == null ? null : Premium.fromMap(json["Premium"]),
      );

  Map<String, dynamic> toMap() => {
        "ID": id == null ? null : id,
        "Country": country == null ? null : country,
        "CountryCode": countryCode == null ? null : countryCode,
        "Slug": slug == null ? null : slug,
        "NewConfirmed": newConfirmed == null ? null : newConfirmed,
        "TotalConfirmed": totalConfirmed == null ? null : totalConfirmed,
        "NewDeaths": newDeaths == null ? null : newDeaths,
        "TotalDeaths": totalDeaths == null ? null : totalDeaths,
        "NewRecovered": newRecovered == null ? null : newRecovered,
        "TotalRecovered": totalRecovered == null ? null : totalRecovered,
        "Date": date == null ? null : date?.toIso8601String(),
        "Premium": premium == null ? null : premium?.toMap(),
      };
}

class Premium {
  Premium();

  factory Premium.fromMap(Map<String, dynamic> json) => Premium();

  Map<String, dynamic> toMap() => {};
}

class Global {
  Global({
    this.newConfirmed,
    this.totalConfirmed,
    this.newDeaths,
    this.totalDeaths,
    this.newRecovered,
    this.totalRecovered,
    this.date,
  });

  int? newConfirmed;
  int? totalConfirmed;
  int? newDeaths;
  int? totalDeaths;
  int? newRecovered;
  int? totalRecovered;
  DateTime? date;

  Global copyWith({
    int? newConfirmed,
    int? totalConfirmed,
    int? newDeaths,
    int? totalDeaths,
    int? newRecovered,
    int? totalRecovered,
    DateTime? date,
  }) =>
      Global(
        newConfirmed: newConfirmed ?? this.newConfirmed,
        totalConfirmed: totalConfirmed ?? this.totalConfirmed,
        newDeaths: newDeaths ?? this.newDeaths,
        totalDeaths: totalDeaths ?? this.totalDeaths,
        newRecovered: newRecovered ?? this.newRecovered,
        totalRecovered: totalRecovered ?? this.totalRecovered,
        date: date ?? this.date,
      );

  factory Global.fromMap(Map<String, dynamic> json) => Global(
        newConfirmed:
            json["NewConfirmed"] == null ? null : json["NewConfirmed"],
        totalConfirmed:
            json["TotalConfirmed"] == null ? null : json["TotalConfirmed"],
        newDeaths: json["NewDeaths"] == null ? null : json["NewDeaths"],
        totalDeaths: json["TotalDeaths"] == null ? null : json["TotalDeaths"],
        newRecovered:
            json["NewRecovered"] == null ? null : json["NewRecovered"],
        totalRecovered:
            json["TotalRecovered"] == null ? null : json["TotalRecovered"],
        date: json["Date"] == null ? null : DateTime.parse(json["Date"]),
      );

  Map<String, dynamic> toMap() => {
        "NewConfirmed": newConfirmed == null ? null : newConfirmed,
        "TotalConfirmed": totalConfirmed == null ? null : totalConfirmed,
        "NewDeaths": newDeaths == null ? null : newDeaths,
        "TotalDeaths": totalDeaths == null ? null : totalDeaths,
        "NewRecovered": newRecovered == null ? null : newRecovered,
        "TotalRecovered": totalRecovered == null ? null : totalRecovered,
        "Date": date == null ? null : date?.toIso8601String(),
      };
}
