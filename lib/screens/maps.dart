import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter/material.dart';

class GoogleMaps extends StatefulWidget {
  static const String id = 'Maps_Screen';
  @override
  _GoogleMapsState createState() => _GoogleMapsState();
}

class _GoogleMapsState extends State<GoogleMaps> {
  static const _initialCameraPosition = CameraPosition(
    target: LatLng(27.684893, 85.346375),
    zoom: 16.5,
    tilt: 50,
  );

  GoogleMapController _googleMapController;
  Marker _origin;
  Marker _destination;

  @override
  void dispose() {
    _googleMapController.dispose();
    super.dispose();
  }

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
        actions: [
          if(_origin != null)
          TextButton(
            onPressed: () => _googleMapController.animateCamera(
              CameraUpdate.newCameraPosition(
                CameraPosition(
                  target: _origin.position,
                  zoom: 16.5,
                  tilt: 70.0,
                ),
              ),
            ),
            style: TextButton.styleFrom(
              primary: Colors.green,
              textStyle: const TextStyle(fontWeight: FontWeight.w600),
            ),
            child: const Text('ORIGIN'),
          ),
          if(_destination != null)
          TextButton(
            onPressed: () => _googleMapController.animateCamera(
              CameraUpdate.newCameraPosition(
                CameraPosition(
                  target: _destination.position,
                  zoom: 16.5,
                  tilt: 70.0,
                ),
              ),
            ),
            style: TextButton.styleFrom(
              primary: Colors.blue,
              textStyle: const TextStyle(fontWeight: FontWeight.w600),
            ),
            child: const Text('DEST'),
          ),
        ],
      ),
      body: GoogleMap(
        initialCameraPosition: _initialCameraPosition,
        onMapCreated: (controller) => _googleMapController = controller,
        markers: {
          if (_origin != null) _origin,
          if (_destination != null) _destination,
        },
        onLongPress: _addMarker,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        child: Icon(Icons.location_searching),
        onPressed: () => _googleMapController.animateCamera(
            CameraUpdate.newCameraPosition(_initialCameraPosition)),
      ),
    );
  }

  void _addMarker(LatLng pos) {
    if (_origin == null || (_origin != null && _destination != null)) {
      setState(() {
        _origin = Marker(
          markerId: const MarkerId('origin'),
          infoWindow: const InfoWindow(title: 'Origin'),
          icon:
              BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueGreen),
          position: pos,
        );
        // Reset Destination
        _destination = null;
      });
    } else {
      setState(() {
        _destination = Marker(
          markerId: const MarkerId('destination'),
          infoWindow: const InfoWindow(title: 'Destination'),
          icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueBlue),
          position: pos,
        );
        // Reset Destination
        // _destination = null;
      });
    }
  }
}
