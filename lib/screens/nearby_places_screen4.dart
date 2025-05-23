import 'package:flutter/material.dart';

class NearByScreenPage extends StatefulWidget {
  // const HomeScreen({Key? key}) : super(key: key);
  // const NearByScreenPage(String title, {super.key});
  const NearByScreenPage({required this.title, Key? key}) : super(key: key);
  final String title;

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
            child: Text(widget.title),
          ),
        ));
  }
}
