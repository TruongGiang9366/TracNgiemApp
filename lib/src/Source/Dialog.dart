import 'package:flutter/material.dart';
import 'package:onluyenapp/src/Source/Succsess.dart';
import 'package:onluyenapp/src/Source/editprofile.dart';

class dialog{
  imformations(BuildContext context, String title, String description){
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
                  MaterialPageRoute(builder: (context) => Succsess_page()),
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