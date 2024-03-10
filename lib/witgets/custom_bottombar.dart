import 'package:flutter/material.dart';
// ignore_for_file: avoid_print

Widget buildBottomBar(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.only(top: 15,bottom: 15, left: 70, right: 70),
    child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
            icon: const Icon(Icons.remove_red_eye_outlined),
            onPressed: () {
              print("First icon pushed");
            },
          ),
          IconButton(
            color: const Color.fromARGB(255, 33, 12, 221),
            icon: const Icon(Icons.account_tree),
            onPressed: () {
              print("Second icon pushed");
            },
          ),
          IconButton(
            icon: const Icon(Icons.mail_outline_outlined),
            onPressed: () {
              print("Third icon pushed");
            },
          ),
          IconButton(
            icon: const Icon(Icons.location_on_outlined),
            onPressed: () {
              print("Fourth icon pushed");
            },
          ),
        ],
    ),
  );
}