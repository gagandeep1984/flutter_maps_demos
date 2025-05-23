import 'package:flutter/material.dart';

class SearchPlacesScreenPage extends StatefulWidget {
  // const HomeScreen({Key? key}) : super(key: key);
  // const NearByScreenPage(String title, {super.key});
  const SearchPlacesScreenPage(
      {required this.title, required this.color, Key? key})
      : super(key: key);
  final String title;
  final Color color;

  @override
  State<SearchPlacesScreenPage> createState() => _SearchPlacesScreenPageState();
}

class _SearchPlacesScreenPageState extends State<SearchPlacesScreenPage> {
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
              child: const Text("Search For Places"),
            ),
          ],
        ));
  }
}
