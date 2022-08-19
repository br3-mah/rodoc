import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Welcome extends StatefulWidget {
  // const Welcome({Key? key}) : super(key: key);

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  Completer<GoogleMapController> _controller = Completer();
  int _selectedIndex = 0;
  int _currentTab = 0;
  // List of top buttons
  List<IconData> _icons = [
    FontAwesomeIcons.ambulance,
    FontAwesomeIcons.carCrash,
    FontAwesomeIcons.carBattery,
    FontAwesomeIcons.hospitalAlt,
  ];

  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );

  static final CameraPosition _kLake = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(37.43296265331129, -122.08832357078792),
      tilt: 59.440717697143555,
      zoom: 19.151926040649414
  );

  //Icons Service section
  Widget _buildIcon(int index) {
    return GestureDetector (
      onTap: (){
        setState(() {
          _selectedIndex = index;
        });
      },
      child: Container(
        height: 50.0,
        width: 50.0,
        decoration: BoxDecoration(
          color: _selectedIndex == index
              ? Theme.of(context).accentColor
              : Color.fromARGB(255, 255, 81, 0),
          borderRadius: BorderRadius.circular(30.0),
        ),
        child: Icon(
          _icons[index],
          size: 25.0,
          color: _selectedIndex == index
              ? Theme.of(context).primaryColor
              : Color.fromARGB(255, 173, 0, 0),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Roadoc Tracker'),
        ),
        body:GoogleMap(
          mapType: MapType.normal,
          initialCameraPosition: _kGooglePlex,
          onMapCreated: (GoogleMapController controller) {
            _controller.complete(controller);
          },
        ),

        floatingActionButton: FloatingActionButton.extended(
          onPressed: _goToTheLake,
          label: Text('Help'),
          icon: Icon(Icons.directions_boat),
        ),
    );
  }

  Future<void> _goToTheLake() async {
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(_kLake));
  }
}

class GoogleMapView extends StatelessWidget {
  const GoogleMapView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

