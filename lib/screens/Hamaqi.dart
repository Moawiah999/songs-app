import 'package:dabeats/components/SongsWedget.dart';
import 'package:dabeats/screens/Assala/AdAlhrouf.dart';
import 'package:dabeats/screens/Hamaqi/YaStar.dart';
import 'package:flutter/material.dart';

class Hamaqi extends StatefulWidget {
  Hamaqi({Key? key}) : super(key: key);

  @override
  State<Hamaqi> createState() => _HamaqiState();
}

class _HamaqiState extends State<Hamaqi> {
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
                  "Hamaqi",
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
                    return YaStar();
                  },));
                });
              },
              SongName: "Ya Star",
            ImageName: "images/Hamaqi.png",
            )
          ],
        ),
      )),
    );
  }
}
