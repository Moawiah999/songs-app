import 'package:dabeats/screens/AmrDiab.dart';
import 'package:dabeats/screens/AssalaNasri.dart';
import 'package:dabeats/screens/Hamaqi.dart';
import 'package:dabeats/screens/Silawy.dart';
import 'package:flutter/material.dart';
import 'package:dabeats/components/ListTileWedget.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}


class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 34, 37, 37),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    "Explore music",
                    style: TextStyle(
                      fontSize: 35,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Divider(
                color: Colors.white,
                height: 30,
                thickness: 1,
              ),
              SingerNameWedget(
                SingerName: "Amr Diab",
                SongNo: 1,
                OnTapping: () {
                  setState(() {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return AmrDiabwedget();
                      },
                    ));
                  });
                },
              ),
              SizedBox(
                height: 15,
              ),
              SingerNameWedget(
                SingerName: "Assala Nasri",
                SongNo: 1,
                OnTapping: () {
                  setState(() {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return Assalawedget();
                      },
                    ));
                  });
                },
              ),
               SizedBox(
                height: 15,
              ),
              SingerNameWedget(
                SingerName: "Hamaqi",
                SongNo: 1,
                OnTapping: () {
                  setState(() {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return Hamaqi();
                      },
                    ));
                  });
                },
              ),
               SizedBox(
                height: 15,
              ),
              SingerNameWedget(
                SingerName: "Silawy",
                SongNo: 1,
                OnTapping: () {
                  setState(() {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return Silawy();
                      },
                    ));
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
