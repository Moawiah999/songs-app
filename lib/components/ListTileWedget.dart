import 'package:flutter/material.dart';
import 'package:dabeats/screens/home.dart';

class SingerNameWedget extends StatelessWidget {
  SingerNameWedget({this.SingerName, this.SongNo,required this.OnTapping});
  String? SingerName;
  int? SongNo;
  Function() OnTapping;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 80,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.55),
        borderRadius: BorderRadius.circular(20),
      ),
      child: ListTile(
        onTap: OnTapping,
        // () {
        //   // setState(() {
        //   //   Navigator.push(
        //   //     context,
        //   //     MaterialPageRoute(
        //   //       builder: (context) {
        //   //         return SingerNameWedget();
        //   //       },
        //   //     ),
        //   //   );
        //   // });
        // },
        leading: Container(
          width: 80,
          child: Image.asset(
            "images/${SingerName}.png",
          ),
        ),
        title: Text(
          "${SingerName}",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(
          "${SongNo} songs",
          style: TextStyle(
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
