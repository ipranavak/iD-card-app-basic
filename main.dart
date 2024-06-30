import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MaterialApp(
    home: Ncard(),
  ));
}

class Ncard extends StatefulWidget {
  const Ncard({super.key});

  @override
  State<Ncard> createState() => _NcardState();
}

class _NcardState extends State<Ncard> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ID card'),
        foregroundColor: Colors.white,
        centerTitle: true,
        backgroundColor: Colors.grey[900],
        elevation: 0.0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            counter += 1;
          });
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.grey[500],
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Center(
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/don.jpg'),
              radius: 50.0,
            ),
          ),
          Divider(height: 50.0, color: Colors.amber),
          Text(
            'NAME',
            style: TextStyle(
                color: Colors.grey, letterSpacing: 2.0, fontSize: 20.0),
          ),
          Text(
            'Corleone',
            style: TextStyle(
                color: Colors.amber,
                letterSpacing: 2.0,
                fontSize: 30.0,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10.0),
          Text(
            'Current level',
            style: TextStyle(
                color: Colors.grey, letterSpacing: 2.0, fontSize: 20.0),
          ),
          Text(
            '$counter',
            style: TextStyle(
                color: Colors.amber,
                letterSpacing: 2.0,
                fontSize: 30.0,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10.0),
          Row(
            children: [
              Icon(Icons.email, color: Colors.grey),
              SizedBox(width: 10.0),
              Text('iammymail@gmail.com',
                  style: TextStyle(
                    color: Colors.grey[400],
                    fontSize: 15.0,
                    letterSpacing: 1.0,
                  )),
            ],
          )
        ]),
      ),
      backgroundColor: Colors.grey[850],
    );
  }
}
