import 'package:flutter/material.dart';
import 'package:onluyenapp/src/Source/LoginPage.dart';
import 'package:onluyenapp/src/Source/Success3.dart';

class Dialogs4 {
  imformationsss(BuildContext context, String title, String description) {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          title: Text(title),
          content: SingleChildScrollView(
            child: ListBody(
              children: [Text(description)],
            ),
          ),
          actions: [
            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: Text("Cancel"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginPage(showRegisterPage: () {  },)),
                );
              },
              child: Text("Ok"),
            ),
          ],
        );
      },
    );
  }
}
