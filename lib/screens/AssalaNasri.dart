import 'package:dabeats/components/SongsWedget.dart';
import 'package:dabeats/screens/Assala/AdAlhrouf.dart';
import 'AmrDiab/AyyamWeBeneshha.dart';
import 'package:flutter/material.dart';

class Assalawedget extends StatefulWidget {
  Assalawedget({Key? key}) : super(key: key);

  @override
  State<Assalawedget> createState() => _AssalawedgetState();
}

class _AssalawedgetState extends State<Assalawedget> {
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
                  "Assala Nasri",
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
                    return AdAlhrouf();
                  },));
                });
              },
              SongName: "Ad al hrouf",
            ImageName: "images/Assala Nasri.png",
            )
          ],
        ),
      )),
    );
  }
}
