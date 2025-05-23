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

  static const String titleGoogleMapSimple = "Google Map Simple";
  static const String titleGoogleMapCurrentLocation =
      "Google Map with Current Location";
  static const String titleGoogleMapSearchPlaces = "Google Map Search Places";
  static const String titleGoogleMapNearbyPlaces = "Near By Places";
  static const String titleGoogleMapPolylineBetween2Points =
      "Polyline between 2 points";

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
              ElevatedButton(
                  onPressed: () => visitPage(
                      context,
                      const NearByScreenPage(
                        title: titleGoogleMapSimple,
                      )),
                  child: const Text(titleGoogleMapSimple)),
              const SizedBox(height: 10),
              ElevatedButton(
                  onPressed: () => visitPage(
                      context,
                      const NearByScreenPage(
                          title: titleGoogleMapCurrentLocation)),
                  child: const Text(titleGoogleMapCurrentLocation)),
              const SizedBox(height: 10),
              ElevatedButton(
                  onPressed: () => visitPage(
                      context,
                      const NearByScreenPage(
                          title: titleGoogleMapSearchPlaces)),
                  child: const Text(titleGoogleMapSearchPlaces)),
              const SizedBox(height: 10),
              ElevatedButton(
                  onPressed: () => visitPage(
                      context,
                      const NearByScreenPage(
                          title: titleGoogleMapNearbyPlaces)),
                  child: const Text(titleGoogleMapNearbyPlaces)),
              const SizedBox(height: 10),
              ElevatedButton(
                  onPressed: () => visitPage(
                      context,
                      const NearByScreenPage(
                          title: titleGoogleMapPolylineBetween2Points)),
                  child: const Text(titleGoogleMapPolylineBetween2Points)),
            ],
          )),
    );
  }
}
