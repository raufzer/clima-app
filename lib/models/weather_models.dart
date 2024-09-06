class WeatherModel {
  final String cityName;
  final String date;
  final String avergeTemp;
  final String minTemp;
  final String maxTemp;
  final String weatherState;

  WeatherModel(
      {required this.cityName,
      required this.date,
      required this.avergeTemp,
      required this.minTemp,
      required this.maxTemp,
      required this.weatherState});

  factory WeatherModel.fromJson(Map<String, dynamic> json) {
    return WeatherModel(
      cityName: json['location']['name'],
      date: json['forecast']['forecastday'][0]['date'].toString(),
      avergeTemp:
          json['forecast']['forecastday'][0]['day']['avgtemp_c'].round().toString(),
      minTemp:
          json['forecast']['forecastday'][0]['day']['mintemp_c'].round().toString(),
      maxTemp:
          json['forecast']['forecastday'][0]['day']['maxtemp_c'].round().toString(),
      weatherState: json['forecast']['forecastday'][0]['day']['condition']
          ['text'],
    );
  }
}
