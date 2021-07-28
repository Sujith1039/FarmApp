import 'dart:math';
import 'package:geolocator/geolocator.dart';
import 'package:farm_app/farmersData.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class GMap extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  GoogleMapController _controller;

  final CameraPosition _initialPosition =
      CameraPosition(target: LatLng(24.903623, 67.198367));

  var marker = <Marker>{};

  addMarker(cordinate) {
    int id = Random().nextInt(100);

    setState(() {
      marker
          .add(Marker(position: cordinate, markerId: MarkerId(id.toString())));
    });
  }

  Future<Position> _determinePosition() async {
    await Geolocator.openAppSettings();
    await Geolocator.openLocationSettings();

    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return Future.error('Location services are disabled.');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return Future.error('Location permissions are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      return Future.error(
          'Location permissions are permanently denied, we cannot request permissions.');
    }
    return await Geolocator.getCurrentPosition();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(
        myLocationEnabled: true,
        myLocationButtonEnabled: true,
        initialCameraPosition: _initialPosition,
        mapType: MapType.hybrid,
        onMapCreated: (controller) {
          setState(() {
            _controller = controller;
          });
        },
        markers: marker,
        onTap: (cordinate) {
          marker.clear();
          _controller.animateCamera(CameraUpdate.newLatLng(cordinate));
          addMarker(cordinate);
          FarmersData.latLong = cordinate;
          print(cordinate);
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          Position _position = await _determinePosition();
          final CameraPosition currentPosition = CameraPosition(
              target: LatLng(_position.latitude, _position.longitude));
          print(_position.latitude);
          print(_position.longitude);
        },
        child: Icon(Icons.zoom_out),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
