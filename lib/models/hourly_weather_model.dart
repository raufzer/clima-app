class HourlyWeatherModel {
  final String time;
  final String temp;
  final String condition;

  HourlyWeatherModel({required this.time, required this.temp, required this.condition});

  factory HourlyWeatherModel.fromJson(Map<String, dynamic> json) {
    final timeString = json['time'];
    final DateTime time = DateTime.parse(timeString);

    final hour = time.hour;
    final String amPm = hour < 12 ? "AM" : "PM";
    final formattedHour = hour % 12 == 0 ? 12 : hour % 12;

    return HourlyWeatherModel(
      condition: json['condition']['text'],
      temp: json['temp_c'].round().toString(),
      time: "$formattedHour $amPm".toString(),
    );
  }
}