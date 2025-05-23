import 'package:flutter/material.dart';

class PolylineScreenPage extends StatefulWidget {
  // const HomeScreen({Key? key}) : super(key: key);
  // const NearByScreenPage(String title, {super.key});
  const PolylineScreenPage({required this.title, required this.color, Key? key})
      : super(key: key);
  final String title;
  final Color color;

  @override
  State<PolylineScreenPage> createState() => _PolylineScreenPageState();
}

class _PolylineScreenPageState extends State<PolylineScreenPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
          backgroundColor: widget.color,
          actions: [
            IconButton(
              icon: const Icon(Icons.search),
              onPressed: () {
                // Perform search action
              },
            ),
          ],
        ),
        body: Column(
          children: [
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: widget.color,
              ),
              child: const Text("Draw Polyline between 2 points"),
            ),
          ],
        ));
  }
}
