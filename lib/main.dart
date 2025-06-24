import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.cyan,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text(
            'My First App',
            style: TextStyle(
              color: Colors.red,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: Center(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(
              20,
            ), // 🔁 Round corners
            child: Image.network(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTU8_FXvAcS7bx7ZxpJpruZbd5B-pvj3J4tUA&s',
              width: 300,
              height: 300,
              fit: BoxFit.cover,
              alignment: Alignment.topCenter,
            ),
          ),
        ),
      ),
    ),
  );
}
