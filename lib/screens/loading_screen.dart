
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'location_screen.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutterintermediate/services/location.dart';
import 'package:flutterintermediate/services/networking.dart';


const apikey = '71d04792a2f280885f8a59413d466035';

class LoadingScreen extends StatefulWidget {


  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {

  double latitude = 0.0;
   double longitude = 0.0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getLocationData();
   // getData();
  }

  void getLocationData() async
  {
  Location location = Location();
   await location.getCurrentLocation();
  longitude= location.longitude!;
  latitude= location.latitude!;
  NetworkHelper networkhelper = NetworkHelper('https://api.openweathermap.org/data/2.5/weather?lat=${latitude}&lon=$longitude&appid=$apikey&units=metric');
  var weatherdata = await networkhelper.getData();

  Navigator.push(context, MaterialPageRoute(builder: (context){
    return LocationScreen(
      locationWeather: weatherdata,
    );
  }));

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SpinKitPouringHourGlass(
          color: Colors.white,
          size: 100.0,

        ),
      ),
      );
  }
}
