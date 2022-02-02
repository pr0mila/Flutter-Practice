
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'location_screen.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutterintermediate/services/weather.dart';




class LoadingScreen extends StatefulWidget {


  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {



  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getLocationData();
   // getData();
  }

  void getLocationData() async
  {

  var weatherdata = await WeatherModel().getLocationWeather();
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
