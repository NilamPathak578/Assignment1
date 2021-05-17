import 'package:challange1_app/widgets/customContainer.dart';
import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent.withOpacity(0.6),
        elevation: 0,
      ),
      body: Stack(
        children: [
          ContainerWidget(),
          Positioned(
            top: 170,
            left: 30,
            height: 450,
            width: 300,
            child: buildCard(),
          ),
          Positioned(top: 620, left: 30, child: buildCard())
        ],
      ),
    );
  }

  Widget buildRow(IconData iconl, String text, IconData iconA) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Icon(
          iconl,
          color: Colors.black12,
        ),
        SizedBox(
          width: 12,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              text,
              style:
                  TextStyle(fontWeight: FontWeight.w500, color: Colors.black12),
            ),
            Text(
              "Materi | Kuis",
              style: TextStyle(color: Colors.black12),
            )
          ],
        ),
        SizedBox(
          width: 60,
        ),
        Icon(
          iconA,
          color: Colors.blue.withOpacity(0.4),
        )
      ],
    );
  }

  Widget buildColumn(String text) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text,
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
        Text("Materi | Kuis")
      ],
    );
  }

  Widget buildCard() {
    return Card(
      elevation: 6,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      color: Colors.white,
      child: Container(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Fungsi Kaudrat",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 4,
              ),
              Text(
                "3Materi | 2Kuis",
                style: TextStyle(color: Colors.black, fontSize: 13),
              ),
              Divider(color: Colors.black38, height: 28),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    Icons.play_circle_outline,
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  buildColumn("Fungsi Kaudrat1"),
                  SizedBox(
                    width: 60,
                  ),
                  Icon(
                    Icons.keyboard_arrow_right,
                    color: Colors.blue.withOpacity(0.4),
                  )
                ],
              ),
              Divider(color: Colors.black38, height: 30),
              buildRow(Icons.picture_as_pdf, "Fungsi Kaudrat1", Icons.lock),
              Divider(color: Colors.black38, height: 30),
              buildRow(Icons.print, "Fungsi Kaudrat1", Icons.lock),
              Divider(color: Colors.black38, height: 30),
              buildRow(
                  Icons.chat_bubble_outline, "Fungsi Kaudrat1", Icons.lock),
              Divider(color: Colors.black38, height: 30),
              buildRow(Icons.message, "Fungsi Kaudrat1", Icons.lock),
              Divider(color: Colors.black38, height: 30),
              Center(
                child: Icon(
                  Icons.keyboard_arrow_down,
                  color: Colors.blue.withOpacity(0.4),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
