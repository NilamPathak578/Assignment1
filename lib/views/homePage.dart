import 'package:challange1_app/views/secondpage.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextStyle style = TextStyle(color: Colors.white, fontSize: 20);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent.withOpacity(0.6),
        elevation: 0,
      ),
      body: Container(
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
              FlatButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SecondPage()));
                },
                child: Text(
                  "Learning Path",
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Card(
                elevation: 6,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                child: Container(
                  height: 100,
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 30,
                      top: 20,
                    ),
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
                          style: TextStyle(color: Colors.black45, fontSize: 13),
                        ),
                        Center(
                          child: Icon(
                            Icons.keyboard_arrow_down,
                            size: 30,
                            color: Colors.blue.withOpacity(0.4),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              buildCard("Fungsi Kaudrat", "3Materi | 2Kuis"),
              SizedBox(
                height: 8,
              ),
              buildCard("Fungsi Kaudrat", "3Materi | 2Kuis"),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildCard(
    String ttext,
    String stext,
  ) {
    return Card(
      elevation: 6,
      color: Colors.white70,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Container(
        height: 100,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 30,
            vertical: 20,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    ttext,
                    style: TextStyle(
                        color: Colors.black38,
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    stext,
                    style: TextStyle(color: Colors.black45, fontSize: 13),
                  ),
                ],
              ),
              Icon(
                Icons.lock_outline,
                color: Colors.blue.withOpacity(0.3),
              )
            ],
          ),
        ),
      ),
    );
  }
}
