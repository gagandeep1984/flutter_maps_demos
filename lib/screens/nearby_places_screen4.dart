import 'package:demo_maps/utils.dart';
import 'package:flutter/material.dart';

class NearByScreenPage extends StatefulWidget {
  // const HomeScreen({Key? key}) : super(key: key);
  // const NearByScreenPage(String title, {super.key});
  const NearByScreenPage({required this.title, required this.color, Key? key})
      : super(key: key);
  final String title;
  final Color color;

  @override
  State<NearByScreenPage> createState() => _NearByScreenPageState();
}

class _NearByScreenPageState extends State<NearByScreenPage> {
  // Widget: Shows panel with name, address and status
  Widget nearbyLocation(String name, String address, String status) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(5),
      // color: Colors.white,
      decoration: BoxDecoration(
        color: Colors.white,
        border:
            Border.all(color: Colors.black, width: 1, style: BorderStyle.solid),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text("Name: $name"),
        Text("Location: $address"),
        Text("Status: $status"),
      ]),
    );
  }

  void fetchPlacesNearby() {
    // call api for places nearby based on current location
    // use setState to save received places
  }

  @override
  Widget build(BuildContext context) {
    // return ElevatedButton(onPressed: null, child: Text(widget.title));

    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
          centerTitle: true,
          backgroundColor: widget.color,
          actions: [
            IconButton(
              icon: const Icon(Icons.near_me),
              onPressed: () {
                // Perform search action
              },
            ),
            PopupMenuButton(
              tooltip: "Sort By",
              itemBuilder: (context) => [
                const PopupMenuItem(
                  value: 1,
                  child: Text("Open Items"),
                ),
                const PopupMenuItem(
                  value: 2,
                  child: Text("Closed Items"),
                ),
              ],
              onSelected: (value) {
                // Handle menu selection

                if (value == 1) {
                  Utils.showSnackBar(context, "Open Items", "Ok");
                } else if (value == 2) {
                  // Sort by closed items
                  Utils.showSnackBar(context, "Closed Items", "Ok");
                }
              },
            ),
          ],
        ),
        body: Padding(
            padding: const EdgeInsets.all(10),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  // Button : Get Nearby Places
                  ElevatedButton(
                    onPressed: () => fetchPlacesNearby(),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: widget.color,
                    ),
                    child: const Text("Get Nearby Places"),
                  ),

                  // Listing :
                  nearbyLocation(
                      "Lahore", "31.33121213, 74.22089281", "Closed"),
                  nearbyLocation("Lahore", "31.33121213, 74.22089281", "Closed")
                ],
              ),
            )));
  }
}
