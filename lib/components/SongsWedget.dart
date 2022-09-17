import 'package:flutter/material.dart';
import 'package:dabeats/screens/home.dart';

class SongsWedget extends StatelessWidget {
  SongsWedget({this.ImageName, this.SongName, required this.OnTapping});
  Function() OnTapping;
  String? SingerName;
  String? SongName;
  String? ImageName;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerRight,
      width: double.infinity,
      height: 80,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.55),
        borderRadius: BorderRadius.circular(20),
      ),
      child: ListTile(
        onTap: OnTapping,
        leading: Container(
          child: Image.asset(
            "${ImageName}",
          ),
        ),
        title: Text(
          "${SongName}",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
