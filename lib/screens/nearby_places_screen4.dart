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
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: widget.color,
            ),
            child: Text(
              widget.title,
            ),
          ),
        ));
  }
}
