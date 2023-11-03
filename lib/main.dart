//import 'package:background_sities/test.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

const List cities = <String>['London', 'Moscow', 'Paris', 'Rome', 'Tokyo'];

class City {
  final String name;
  final String backgroundImage;

  City(this.name, this.backgroundImage);
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  City selectedCity = City('London', 'assets/London.jpg');

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Города'),
        ),
        body: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(selectedCity.backgroundImage),
              fit: BoxFit.cover,
            ),
          ),
          child: ListView.builder(
            itemCount: cities.length,
            itemBuilder: (context, index) {
              final city = cities[index];
              return ListTile(
                title: Text(
                  '$city',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                  ),
                ),
                onTap: () {
                  setState(() {
                    selectedCity = City('$city', 'assets/$city.jpg');
                  });
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
