import 'package:dabeats/components/SongsWedget.dart';
import 'AmrDiab/AyyamWeBeneshha.dart';
import 'package:flutter/material.dart';

class AmrDiabwedget extends StatefulWidget {
  AmrDiabwedget({Key? key}) : super(key: key);

  @override
  State<AmrDiabwedget> createState() => _AmrDiabwedgetState();
}

class _AmrDiabwedgetState extends State<AmrDiabwedget> {
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
                  "Amr Diab",
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
                    return AyyamWeBeneshha();
                  },));
                });
              },
              SongName: "Ayyam WeBen'eshha",
            ImageName: "images/Amr Diab.png",
            )
          ],
        ),
      )),
    );
  }
}
