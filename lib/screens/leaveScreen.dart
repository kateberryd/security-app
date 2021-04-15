import 'package:flutter/material.dart';

class LeaveScreen extends StatefulWidget {
  @override
  _LeaveScreenState createState() => _LeaveScreenState();
}

class _LeaveScreenState extends State<LeaveScreen>
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
            Color(0xFF000080),
            Color(0xFF000020)
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
                    child: Text('Leave ',
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 30.0,
                            letterSpacing: 2.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white)),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Request',
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
                          _leaveRequest("3weeks", "baby", "location"),
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
      floatingActionButton: FloatingActionButton(
      onPressed: () {
        // Add your onPressed code here!
      },
      splashColor: Theme.of(context).accentColor,
      child: Icon(Icons.add, color: Colors.white, size: 40.0, ),
      backgroundColor: Theme.of(context).primaryColor
      
    ),
    );
  }
}
    
  Widget _leaveRequest(String duration, String name, String location) {
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
                        'Title:',
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
                          'Annual security leave',
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
                        'Description:',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.normal,
                            letterSpacing: 1.5,
                            fontSize: 20.0),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          'I hate you guys... ',
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
                        'Duaration:',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.normal,
                            letterSpacing: 1.5,
                            fontSize: 20.0),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          '1Month',
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
                        'Status:',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.normal,
                            letterSpacing: 1.5,
                            fontSize: 20.0),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          'Request Accepted',
                          style: TextStyle(
                              color: Colors.green,
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
