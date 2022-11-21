import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:work/StudentResultDetails.dart';
import "SingleScholarshipOverview.dart";
import 'GlobalVariables.dart';
import 'UniversityScholarshipAddition.dart';

class UniversityScholarshipsOverview extends StatefulWidget {
  const UniversityScholarshipsOverview({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return UniversityScholarshipsOverviewState();
  }
}

class UniversityScholarshipsOverviewState
    extends State<UniversityScholarshipsOverview> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(42, 120, 204, 1),
          title: Container(
            child: Row(
              children: <Widget>[
                ImageIcon(
                  ExactAssetImage("assets/images/others/UniversityIcon.png"),
                  color: Colors.black,
                ),
                Text(
                  " ${university.name} university",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
        ),
        body: Center(
          child: ListView.builder(
            itemCount: universityScholarships.length,
            padding: EdgeInsets.all(10),
            itemBuilder: (_, index) {
              return Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Card(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            university.imagePath,
                            fit: BoxFit.cover,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 30,
                    width: 450,
                    transform: Matrix4.translationValues(10, 20, 0),
                    color: Color.fromRGBO(0, 0, 0, 0.5),
                    child: Row(
                      children: [
                        Text(
                          " Study level: ",
                          style: TextStyle(color: Colors.green, fontSize: 20),
                        ),
                        Text(
                          "${universityScholarships[index].studyLevel}.",
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 30,
                    width: 450,
                    transform: Matrix4.translationValues(10, 60, 0),
                    color: Color.fromRGBO(0, 0, 0, 0.5),
                    child: Row(
                      children: [
                        Text(
                          " Specification: ",
                          style: TextStyle(color: Colors.green, fontSize: 20),
                        ),
                        Text(
                          "${universityScholarships[index].specification}.",
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 30,
                    width: 450,
                    transform: Matrix4.translationValues(10, 100, 0),
                    color: Color.fromRGBO(0, 0, 0, 0.5),
                    child: Row(
                      children: [
                        Text(
                          " Academic language: ",
                          style: TextStyle(color: Colors.green, fontSize: 20),
                        ),
                        Text(
                          "${universityScholarships[index].academicLanguage}.",
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 30,
                    width: 450,
                    transform: Matrix4.translationValues(10, 140, 0),
                    color: Color.fromRGBO(0, 0, 0, 0.5),
                    child: Row(
                      children: [
                        Text(
                          " Age: ",
                          style: TextStyle(color: Colors.green, fontSize: 20),
                        ),
                        Text(
                          "from ${universityScholarships[index].startAge} to ${universityScholarships[index].endAge}.",
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 100,
                    width: 700,
                    transform: Matrix4.translationValues(10, 180, 0),
                    child: Row(
                      children: [
                        SizedBox(width: 50),
                        Container(
                          height: 50,
                          width: 150,
                          child: Container(
                            child: RaisedButton(
                              color: Colors.green,
                              splashColor: Colors.white,
                              onPressed: () {
                                setState(() {
                                  scholarship = universityScholarships[index];
                                  scholarshipIndex = index;
                                  Navigator.of(context)
                                      .push(MaterialPageRoute(builder: (ctx) {
                                    return SingleScholarshipOverview();
                                  }));
                                });
                              },
                              child: Row(
                                children: [
                                  Text(
                                    "  Edit ",
                                    style: TextStyle(
                                        fontSize: 35, color: Colors.white),
                                  ),
                                  Container(
                                    child: Icon(
                                      Icons.edit,
                                      color: Colors.black,
                                      size: 30,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 50,
                        ),
                        Container(
                          height: 50,
                          width: 150,
                          child: Container(
                            child: RaisedButton(
                              color: Colors.red,
                              splashColor: Colors.white,
                              onPressed: () {
                                result = results[index];
                                Navigator.of(context)
                                    .push(MaterialPageRoute(builder: (ctx) {
                                  return StudentResultDetails();
                                }));
                              },
                              child: Row(
                                children: [
                                  Text(
                                    "Delete",
                                    style: TextStyle(
                                        fontSize: 35, color: Colors.white),
                                  ),
                                  Container(
                                    child: Icon(
                                      Icons.delete_forever,
                                      color: Colors.black,
                                      size: 30,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              );
            },
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              Navigator.of(context).push(MaterialPageRoute(builder: (ctx) {
                return UniversityScholarshipAddition();
              }));
            });
          },
          splashColor: Colors.white,
          backgroundColor: Color.fromRGBO(42, 120, 204, 1),
          child: Row(
            children: [
              Icon(Icons.add),
              Text(
                "Add",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
