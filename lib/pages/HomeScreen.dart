import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  Map<String, dynamic> data = {};

  @override
  Widget build(BuildContext context) {

    if (data.isEmpty) {
      data = ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    }

    String bgImage = data['isDayTime']? 'day.png': 'night.png';
    Color textColor = data['isDayTime']? Colors.black: Colors.white;

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/$bgImage'),
            fit: BoxFit.fill,
          ),
        ),
        child: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            TextButton.icon(
              style: TextButton.styleFrom(
                backgroundColor: data['isDayTime'] ? Colors.yellow : Colors.lightBlue,
              ),
              label: Text(
                'choose location',
                style: TextStyle(
                  color: textColor,
                ),
              ),
              icon: Icon(
                Icons.location_on_rounded,
                color: textColor,
              ),
              onPressed: () async {
                final result = await Navigator.pushNamed<Map<String, dynamic>>(
                  context, '/location',
                );
                if (!mounted || result == null) return;
                setState(() => data = result);
              },
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              data['location'],
              style: TextStyle(
                fontWeight: FontWeight.bold,
                letterSpacing: 2,
                fontSize: 40,
                color: textColor,
              ),
            ),
            SizedBox(height: 14,),
            Text(
              data['time'],
              style: TextStyle(
                fontSize: 66,
                fontWeight: FontWeight.bold,
                  color: textColor,
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
