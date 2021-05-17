import 'package:flutter/material.dart';

class ContainerWidget extends StatelessWidget {
  final TextStyle style = TextStyle(color: Colors.white, fontSize: 20);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      //color: Colors.blueAccent.withOpacity(0.6),
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Colors.blueAccent.shade100, Colors.purple.shade100])),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  "x ipa a".toUpperCase(),
                  style: style,
                ),
                SizedBox(
                  width: 4,
                ),
                Text(
                  "Matematika",
                  style: style,
                ),
              ],
            ),
            SizedBox(
              height: 6,
            ),
            Text(
              "Kelas X",
              style: TextStyle(color: Colors.white70, fontSize: 15),
            ),
            SizedBox(
              height: 4,
            ),
            Text(
              "3Learning Path",
              style: TextStyle(color: Colors.white70, fontSize: 12),
            ),
            SizedBox(
              height: 50.0,
            ),
            Text(
              "Learning Path",
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
