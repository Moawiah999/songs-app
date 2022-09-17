import 'package:dabeats/components/SongsWedget.dart';
import 'package:dabeats/screens/Hamaqi/YaStar.dart';
import 'package:dabeats/screens/Silawy/Ashanek.dart';
import 'package:flutter/material.dart';

class Silawy extends StatefulWidget {
  Silawy({Key? key}) : super(key: key);

  @override
  State<Silawy> createState() => _SilawyState();
}

class _SilawyState extends State<Silawy> {
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
                BackButton(
                  color: Colors.white,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Silawy",
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
            SongsWedget(
              OnTapping: () {
                setState(() {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Ashanek();
                  },));
                });
              },
              SongName: "Ashanek",
            ImageName: "images/Silawy.png",
            )
          ],
        ),
      )),
    );
  }
}
