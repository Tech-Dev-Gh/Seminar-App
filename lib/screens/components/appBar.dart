import 'package:flutter/material.dart';

appBar(String? itemName) {
  return AppBar(
    elevation: 0,
    centerTitle: true,
    title: Text(itemName!),
    backgroundColor: Colors.white,
    actions: [
      Padding(
        padding: const EdgeInsets.only(right: 10.0),
        child: CircleAvatar(
          backgroundImage: AssetImage(
            "assets/images/avatar.png",
          ),
        ),
      ),
    ],
  );
}
