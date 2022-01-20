
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:http/http.dart' as http;
import 'package:flutterintermediate/services/location.dart';


class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getLocation();
    getData();
  }

  void getLocation() async
  {
  Location location = Location();
   await location.getCurrentLocation();
  print(location.longitude);
   print(location.latitude);

  }

  void getData() async
  {
    http.Response response = await http.get(Uri.parse('https://samples.openweathermap.org/data/2.5/weather?lat=35&lon=139&appid=f1adb207ffdbecb6a4cda2b7caf98efd'));
    print(response.statusCode);
    if (response.statusCode == 200)
      print(response.body);
    else
      print(response.statusCode);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RaisedButton(
          onPressed: () {
            //Get the current location
           // getLocation();
          },
          //child: Text('Get Location'),
        ),
      ),
    );
  }
}
