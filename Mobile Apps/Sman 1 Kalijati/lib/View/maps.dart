import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
// import 'package:location/location.dart';

class Maps extends StatefulWidget {
  @override
  _MapsState createState() => _MapsState();
}

class _MapsState extends State<Maps> {
  Completer<GoogleMapController> _controller = Completer();

  static const LatLng _center = const LatLng(-6.939027, 107.661329);

  final Set<Marker> _markers = {};

  LatLng _lastMapPosition = _center;

  MapType _currentMapType = MapType.normal;
  // var location = new Location();
  Map<String, double> currentLocation = new Map();
  void _onMapTypeButtonPressed() {
    setState(() {
      _currentMapType = _currentMapType == MapType.normal
          ? MapType.satellite
          : MapType.normal;
    });
  }

  // @override
  // void initState() {
  //   location.onLocationChanged().listen((value) {
  //     if (!mounted) return;
  //     setState(() {
  //       currentLocation = value;
  //     });
  //   });
  // }

  void _onAddMarkerButtonPressed() {
    setState(() {
      _markers.add(Marker(
        // This marker id can be anything that uniquely identifies each marker.
        markerId: MarkerId(_lastMapPosition.toString()),
        position: _lastMapPosition,
        infoWindow: InfoWindow(
          title: 'Telkomsel Jawa Barat',
          snippet: '5 Star Rating',
        ),
        icon: BitmapDescriptor.defaultMarker,
      ));
    });
  }

  void _onCameraMove(CameraPosition position) {
    _lastMapPosition = position.target;
  }

  void _onMapCreated(GoogleMapController controller) {
    _controller.complete(controller);
  }

  @override
  Widget build(BuildContext context) {
    // var location = new Location();
    var lebar = MediaQuery.of(context).size.width;
    var panjang = MediaQuery.of(context).size.height;

    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Maps'),
            backgroundColor: Colors.green[700],
          ),
          body: ListView(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(top: 10.0, right: 10.0),
                height: panjang / 1.8,
                width: lebar,
                child: Stack(
                  overflow: Overflow.clip,
                  children: <Widget>[
                    GoogleMap(
                      onMapCreated: _onMapCreated,
                      initialCameraPosition: CameraPosition(
                        target: _center,
                        zoom: 20.0,
                      ),
                      mapType: _currentMapType,
                      markers: _markers,
                      onCameraMove: _onCameraMove,
                    ),
                    Column(
                      children: <Widget>[
                        Align(
                          alignment: Alignment.topRight,
                          child: Column(
                            children: <Widget>[
                              FloatingActionButton(
                                onPressed: _onMapTypeButtonPressed,
                                materialTapTargetSize:
                                    MaterialTapTargetSize.padded,
                                backgroundColor: Colors.green,
                                child: const Icon(Icons.map, size: 36.0),
                              ),
                              SizedBox(height: 16.0),
                              FloatingActionButton(
                                onPressed: _onAddMarkerButtonPressed,
                                materialTapTargetSize:
                                    MaterialTapTargetSize.padded,
                                backgroundColor: Colors.green,
                                child:
                                    const Icon(Icons.add_location, size: 36.0),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Row(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 50.0, left: 100.0),
                    child: Column(
                      children: <Widget>[
                        Text(
                          '09:45',
                          style: TextStyle(
                              fontSize: 40.0, fontWeight: FontWeight.w400),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 10.0),
                          child: Text('Rabu,24 Juli 2019'),
                        ),
                        Column(
                          children: <Widget>[
                            Container(
                              height: panjang / 16,
                              width: lebar / 2.0,
                              margin: EdgeInsets.only(top: 20.0),
                              child: Opacity(
                                //wrap our button in an `Opacity` Widget
                                opacity: 0.8, //with 50% opacity
                                child: RaisedButton(
                                  color: Colors.black45,
                                  child: Text(
                                    'CLOCK IN',
                                    style: TextStyle(
                                      fontSize: 20.0,
                                      color: Colors.white,
                                    ),
                                  ),
                                  onPressed: () {
                                    //Code to execute when Button is clicked
                                    //...
                                  },
                                ),
                              ),
                            ),
                          ],
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 10.0),
                          child: Row(
                            children: <Widget>[
                              Text('Last Clock Out: '),
                              Text(
                                '23/07/2019 - 14:46:07',
                                style: TextStyle(color: Colors.red),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              )
            ],
          )),
    );
  }
}
