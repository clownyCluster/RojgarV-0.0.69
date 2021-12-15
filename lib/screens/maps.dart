import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter/material.dart';

class GoogleMaps extends StatefulWidget {
  static const String id = 'Maps_Screen';
  @override
  _GoogleMapsState createState() => _GoogleMapsState();
}

class _GoogleMapsState extends State<GoogleMaps> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Google Maps'),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.purple, Colors.redAccent[700]],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight),
          ),
        ),
      ),
      body: GoogleMap(
        initialCameraPosition: CameraPosition(
          target: LatLng(27.684778, 85.346499),
          zoom: 15,
        ),
      ),
    );
  }
}
