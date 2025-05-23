import 'package:demo_maps/screens/nearby_places_screen4.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<StatefulWidget> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // Navigate to the target screen
  void visitPage(BuildContext buildContext, Widget clsname) {
    Navigator.push(
        buildContext, MaterialPageRoute(builder: (buildContext) => clsname));
  }

  static const (String, Color) googleMapSimple =
      ("Google Map Simple", Colors.redAccent);
  static const (String, Color) googleMapCurrentLocation =
      ("Google Map with Current Location", Colors.blueAccent);
  static const (String, Color) googleMapSearchPlaces =
      ("Google Map Search Places", Colors.greenAccent);
  static const (String, Color) googleMapNearbyPlaces =
      ("Near By Places", Colors.purpleAccent);
  static const (String, Color) googleMapPolylineBetween2Points =
      ("Polyline between 2 points", Colors.orangeAccent);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Google Map Demos'),
        centerTitle: true,
      ),
      body: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Google Map Simple
              ElevatedButton(
                  onPressed: () => visitPage(
                      context,
                      NearByScreenPage(
                        title: googleMapSimple.$1,
                        color: googleMapSimple.$2,
                      )),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: googleMapSimple.$2),
                  child: Text(googleMapSimple.$1)),
              const SizedBox(height: 10),

              // Google Map with Current Location
              ElevatedButton(
                  onPressed: () => visitPage(
                      context,
                      NearByScreenPage(
                        title: googleMapCurrentLocation.$1,
                        color: googleMapCurrentLocation.$2,
                      )),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: googleMapCurrentLocation.$2),
                  child: Text(googleMapCurrentLocation.$1)),
              const SizedBox(height: 10),

              // Google Map Search Places
              ElevatedButton(
                  onPressed: () => visitPage(
                      context,
                      NearByScreenPage(
                        title: googleMapSearchPlaces.$1,
                        color: googleMapSearchPlaces.$2,
                      )),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: googleMapSearchPlaces.$2),
                  child: Text(googleMapSearchPlaces.$1)),
              const SizedBox(height: 10),

              // Google Map Near By Places
              ElevatedButton(
                  onPressed: () => visitPage(
                      context,
                      NearByScreenPage(
                        title: googleMapNearbyPlaces.$1,
                        color: googleMapNearbyPlaces.$2,
                      )),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: googleMapNearbyPlaces.$2),
                  child: Text(googleMapNearbyPlaces.$1)),
              const SizedBox(height: 10),

              // Google Map Polyline between 2 points
              ElevatedButton(
                onPressed: () => visitPage(
                    context,
                    NearByScreenPage(
                      title: googleMapPolylineBetween2Points.$1,
                      color: googleMapPolylineBetween2Points.$2,
                    )),
                style: ElevatedButton.styleFrom(
                    backgroundColor: googleMapPolylineBetween2Points.$2),
                child: Text(googleMapPolylineBetween2Points.$1),
              ),
            ],
          )),
    );
  }
}
