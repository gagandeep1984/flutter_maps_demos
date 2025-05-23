import 'package:flutter/material.dart';

class Utils {
  static void showSnackBar(
      BuildContext context, String message, String actionlabel) {
    final snackBar = SnackBar(
      content: Text(message),
      duration: const Duration(seconds: 2),
      backgroundColor: Colors.red,
      action: SnackBarAction(
        label: actionlabel,
        onPressed: () {
          // Some code to undo the change.
        },
      ),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
