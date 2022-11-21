import 'package:flutter/material.dart';

class StudentResultDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(42, 120, 204, 1),
          title: Container(
            child: Row(
              children: <Widget>[
                Icon(
                  Icons.details,
                  color: Colors.black,
                ),
                Text(
                  " Scholarship detailed information",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  width: double.infinity,
                  color: Colors.grey.shade200,
                  child: Text(
                      "dshf kjdshfkj dskjfhdsk;j fhdsk;f hdsk fhdskjf dskjl hfdskfh dsklj fhdskl fhdsklj fhdsklj"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  width: double.infinity,
                  color: Colors.grey.shade200,
                  child: Text("f dsio fdshf hdsfh jf"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  width: double.infinity,
                  color: Colors.grey.shade200,
                  child: Text("jdshfkdhsfkjhdskh dkfh dskj fhdskfh dskh"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  width: double.infinity,
                  color: Colors.grey.shade200,
                  child: Text(""),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  width: double.infinity,
                  color: Colors.grey.shade200,
                  child: Text(""),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  width: double.infinity,
                  color: Colors.grey.shade200,
                  child: Text(""),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  width: double.infinity,
                  color: Colors.grey.shade200,
                  child: Text(""),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  width: double.infinity,
                  color: Colors.grey.shade200,
                  child: Text(""),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
