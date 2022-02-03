import 'package:flutterintermediate/services/location.dart';
import 'package:flutterintermediate/services/networking.dart';

const apikey = '71d04792a2f280885f8a59413d466035';
const openMapURL = 'https://api.openweathermap.org/data/2.5/weather';



class WeatherModel {

  double latitude = 0.0;
  double longitude = 0.0;

  Future<dynamic> getCityWeather(String cityName) async
  {
    NetworkHelper networkHelper = NetworkHelper('$openMapURL?q=$cityName&appid=$apikey&units=metric');
    var weatherData = await networkHelper.getData();
    return weatherData;
  }

  Future<dynamic> getLocationWeather() async
  {
    Location location = Location();
    await location.getCurrentLocation();
    NetworkHelper networkhelper = NetworkHelper('$openMapURL?lat=${location.latitude}&lon=${location.longitude}&appid=$apikey&units=metric');
    var weatherData = await networkhelper.getData();
    return weatherData;

  }

  String getWeatherIcon(int condition) {
    if (condition < 300) {
      return '🌩';
    } else if (condition < 400) {
      return '🌧';
    } else if (condition < 600) {
      return '☔️';
    } else if (condition < 700) {
      return '☃️';
    } else if (condition < 800) {
      return '🌫';
    } else if (condition == 800) {
      return '☀️';
    } else if (condition <= 804) {
      return '☁️';
    } else {
      return '🤷‍';
    }
  }

  String getMessage(int temp) {
    if (temp > 25) {
      return 'It\'s 🍦 time';
    } else if (temp > 20) {
      return 'Time for shorts and 👕';
    } else if (temp < 10) {
      return 'You\'ll need 🧣 and 🧤';
    } else {
      return 'Bring a 🧥 just in case';
    }
  }
}
