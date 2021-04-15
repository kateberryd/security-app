import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
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
        appBar: AppBar(
            title: Text(
              "Security App",
              style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),
            ),
            leading: Icon(Icons.arrow_back_ios),
            backgroundColor: Colors.black,
            actions: <Widget>[
              IconButton(
                  icon: Icon(Icons.account_circle),
                  onPressed: () {},
                  iconSize: 40.0,
                  color: Color(0xFF87ceeb)),
            ]),
        body: SafeArea(
            child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
            Theme.of(context).accentColor,
            Theme.of(context).primaryColor
          ])),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 30.0,
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 18.0, horizontal: 36.0),
                child: Text(
                  'Welcome, Saidu \nplease select an option',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 28.0,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.0),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(12.0),
                child: Center(
                  child: Wrap(
                    spacing: 20.0,
                    runSpacing: 20.0,
                    children: <Widget>[
                      SizedBox(
                        width: 160.0,
                        height: 160.0,
                        child: Card(
                            color: Color.fromARGB(255, 21, 21, 21),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            elevation: 10,
                            child: GestureDetector(
                              onTap: () {
                                Navigator.pushNamed(context, '/profile');
                              },
                              child: Padding(
                                padding: EdgeInsets.all(18.0),
                                child: Column(
                                  children: <Widget>[
                                    Icon(
                                      Icons.account_circle,
                                      color: Color(0xFF87ceeb),
                                      size: 64.0,
                                    ),
                                    SizedBox(height: 10.0),
                                    Text(
                                      'Account',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18.0),
                                    ),
                                    SizedBox(
                                      height: 5.0,
                                    ),
                                  ],
                                ),
                              ),
                            )),
                      ),
                      SizedBox(
                        width: 160.0,
                        height: 160.0,
                        child: InkWell(
                           onTap: () {
                                Navigator.pushNamed(context, '/duty');
                             },
                          child: Card(
                              color: Color.fromARGB(255, 21, 21, 21),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              elevation: 10,
                              child: Padding(
                                padding: EdgeInsets.all(18.0),
                                child: Column(
                                  children: <Widget>[
                                    Icon(
                                      Icons.security,
                                      color: Color(0xFF87ceeb),
                                      size: 64.0,
                                    ),
                                    SizedBox(height: 10.0),
                                    Text(
                                      'Duty post',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18.0),
                                    ),
                                    SizedBox(
                                      height: 5.0,
                                    ),
                                    Text(
                                      '5 Items',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 14.0),
                                    )
                                  ],
                                ),
                              )),
                        ),
                      ),
                      SizedBox(
                        width: 160.0,
                        height: 160.0,
                        child: InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, '/leave');
                          },
                          child: Card(
                              color: Color.fromARGB(255, 21, 21, 21),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              elevation: 10,
                              child: Padding(
                                padding: EdgeInsets.all(18.0),
                                child: Column(
                                  children: <Widget>[
                                    Icon(
                                      Icons.restore,
                                      color: Color(0xFF87ceeb),
                                      size: 64.0,
                                    ),
                                    SizedBox(height: 10.0),
                                    Text(
                                      'Leave',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18.0),
                                    ),
                                    SizedBox(
                                      height: 5.0,
                                    ),
                                    Text(
                                      '5 Items',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 14.0),
                                    )
                                  ],
                                ),
                              )),
                        ),
                      ),
                      SizedBox(
                        width: 160.0,
                        height: 160.0,
                        child: Card(
                            color: Color.fromARGB(255, 21, 21, 21),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            elevation: 10,
                            child: Padding(
                              padding: EdgeInsets.all(18.0),
                              child: Column(
                                children: <Widget>[
                                  Icon(
                                    Icons.settings,
                                    color: Color(0xFF87ceeb),
                                    size: 64.0,
                                  ),
                                  SizedBox(height: 10.0),
                                  Text(
                                    'Duty post',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18.0),
                                  ),
                                  SizedBox(
                                    height: 5.0,
                                  ),
                                  Text(
                                    '5 Items',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 14.0),
                                  )
                                ],
                              ),
                            )),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        )));
  }
}
