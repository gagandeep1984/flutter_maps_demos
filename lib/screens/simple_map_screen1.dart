import 'package:flutter/material.dart';

class SimpleMapScreenPage extends StatefulWidget {
  // const HomeScreen({Key? key}) : super(key: key);
  // const NearByScreenPage(String title, {super.key});
  const SimpleMapScreenPage(
      {required this.title, required this.color, Key? key})
      : super(key: key);

  final String title;
  final Color color;

  @override
  State<SimpleMapScreenPage> createState() => _SimpleMapScreenPageState();
}

class _SimpleMapScreenPageState extends State<SimpleMapScreenPage> {
  @override
  Widget build(BuildContext context) {
    // return ElevatedButton(onPressed: null, child: Text(widget.title));

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
              child: const Text("Display Map"),
            ),
          ],
        ));
  }
}
