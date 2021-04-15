import 'package:flutter/material.dart';

class DutyPostScreen extends StatefulWidget {
  @override
  _DutyPostScreenState createState() => _DutyPostScreenState();
}

class _DutyPostScreenState extends State<DutyPostScreen>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          Theme.of(context).accentColor,
          Theme.of(context).primaryColor
        ])),
        child: ListView(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 15.0, left: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  IconButton(
                      icon: Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white,
                      ),
                      onPressed: null),
                  Container(
                    width: 125.0,
                    child: Row(
                      children: <Widget>[
                        Spacer(),
                        IconButton(
                            icon: Icon(
                              Icons.account_circle,
                              color: Colors.white,
                            ),
                            onPressed: null),
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 25.0,
            ),
            Padding(
              padding: EdgeInsets.only(left: 40.0),
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Assigned Duty',
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 30.0,
                            letterSpacing: 2.0,
                            fontWeight: FontWeight.normal,
                            color: Colors.white)),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Post',
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 30.0,
                            letterSpacing: 2.0,
                            color: Colors.white)),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Container(
              height: MediaQuery.of(context).size.height - 185.0,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(45.0),
                      topRight: Radius.circular(45.0),)),
              child: ListView(
                primary: false,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 10.0),
                    child: Container(
                      height: 500.0,
                      child: ListView(
                        children: <Widget>[
                          _dutyPostWidget("3weeks", "baby", "location"),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}


Widget _dutyPostWidget(String duration, String name, String location) {
  return Padding(
    padding: EdgeInsets.only(top: 60.0, right: 5.0, left: 30),
    child: InkWell(
      onTap: () {},
      child: Row(
        children: <Widget>[
          SizedBox(
            width: 370.0,
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Name:',
                        style: TextStyle(
                            color: Colors.black,
                             fontFamily: 'Montserrat',
                            fontWeight: FontWeight.normal,
                            letterSpacing: 1.5,
                            fontSize: 20.0),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          'Saidu Habila',
                          style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.normal,
                              letterSpacing: 1.5,
                              fontSize: 20.0),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height:20.0),
                  
                   Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Location:',
                        style: TextStyle(
                            color: Colors.black,
                             fontFamily: 'Montserrat',
                            fontWeight: FontWeight.normal,
                            letterSpacing: 1.5,
                            fontSize: 20.0),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          'New main cam gate',
                          style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.normal,
                              letterSpacing: 1.5,
                              fontSize: 20.0),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height:20.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Duration:',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.normal,
                            letterSpacing: 1.5,
                            fontSize: 20.0),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          '3weeks',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.normal,
                              letterSpacing: 1.5,
                              fontSize: 20.0),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20.0),
                  
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Date:',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.normal,
                            letterSpacing: 1.5,
                            fontSize: 20.0),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          '1st Feb, 2021',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.normal,
                              letterSpacing: 1.5,
                              fontSize: 20.0),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20.0),
                ],
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
