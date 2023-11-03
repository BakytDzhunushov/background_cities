import 'package:flutter/material.dart';

class City {
  final String name;
  final String backgroundImage;

  City(this.name, this.backgroundImage);
}

class MyAp extends StatefulWidget {
  @override
  _MyApState createState() => _MyApState();
}

class _MyApState extends State<MyAp> {
  City selectedCity = City('London', 'assets/London.jpg');

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Города'),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.settings, color: Colors.blue),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.more_vert, color: Colors.blue),
            ),
          ],
        ),
        body: Container(
          // Добавьте другие города по аналогии
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(selectedCity.backgroundImage),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: <Widget>[
              ListTile(
                title: const Text('London', style: TextStyle(color: Colors.white, fontSize: 20),),
                onTap: () {
                  setState(() {
                    selectedCity = City('London', 'assets/London.jpg');
                  });
                },
              ),
              ListTile(
                title: const Text('Paris', style: TextStyle(color: Colors.white, fontSize: 20),),
                onTap: () {
                  setState(() {
                    selectedCity = City('Paris', 'assets/paris.jpg');
                  });
                },
              ),
              Text(
                'Выбранный город: ${selectedCity.name}',
                style: const TextStyle(color: Colors.white, fontSize: 30),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
