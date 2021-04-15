import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  
  TextEditingController _firstName  = TextEditingController();
  TextEditingController _lastName  = TextEditingController();
  TextEditingController _email = TextEditingController();
  TextEditingController _phone = TextEditingController();
  TextEditingController _password = TextEditingController();
  TextEditingController _confirmPassword = TextEditingController();
  
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Container(
        padding: const EdgeInsets.all(20.0),
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          Theme.of(context).accentColor,
          Theme.of(context).primaryColor
        ])),
        child: Form(
           key: _formkey,
            child: Column(
            children: <Widget>[
            Expanded(
             child:  Container(
                    height: 30,
                    margin: const EdgeInsets.only(top: 30.0, bottom: 10.0),
                    child: Text('Signup Here'.toUpperCase(),
                        style: TextStyle(
                            color: Colors.white70,
                            fontSize: 24.0,
                         fontWeight: FontWeight.bold)),
                 ),
            ),
              SizedBox(height: 20.0),
             Expanded(child:  TextFormField(
                controller: _firstName,
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(16.0),
                    prefixIcon: Container(
                      padding: const EdgeInsets.only(top: 16.0, bottom: 16.0),
                      margin: const EdgeInsets.only(right: 8.0),
                      child: Icon(Icons.person, color: Color(0xFF000080)),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30.0),
                              bottomLeft: Radius.circular(30),
                              topRight: Radius.circular(30),
                              bottomRight: Radius.circular(10))),
                    ),
                    hintText: "Enter your first name",
                    hintStyle: TextStyle(color: Colors.white54),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0),
                        borderSide: BorderSide.none),
                    filled: true,
                    fillColor: Colors.white.withOpacity(0.1)),
                  validator: (String value){
                      if(value.isEmpty){
                        return "Please enter your first name";
                      }
                      
                      return null;
                      
                  },
                onSaved: (String firstName){
                  
                },
              ),
            ),
             SizedBox(height: 20.0),

              TextFormField(
                controller: _lastName,
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(16.0),
                    prefixIcon: Container(
                      padding: const EdgeInsets.only(top: 16.0, bottom: 16.0),
                      margin: const EdgeInsets.only(right: 8.0),
                      child: Icon(Icons.person, color: Color(0xFF000080)),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30.0),
                              bottomLeft: Radius.circular(30),
                              topRight: Radius.circular(30),
                              bottomRight: Radius.circular(10))),
                    ),
                    hintText: "Enter your last name",
                    hintStyle: TextStyle(color: Colors.white54),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0),
                        borderSide: BorderSide.none),
                    filled: true,
                    fillColor: Colors.white.withOpacity(0.1)),
                  validator: (String value){
                      if(value.isEmpty){
                        return "Please enter your last name";
                      }
                      
                      return null;
                      
                  },
                onSaved: (String lastName){
                  
                },
              ),
              
              
              SizedBox(height: 20.0),
              TextFormField(
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(16.0),
                    prefixIcon: Container(
                      padding: const EdgeInsets.only(top: 16.0, bottom: 16.0),
                      margin: const EdgeInsets.only(right: 8.0),
                      child: Icon(Icons.email, color: Color(0xFF000080)),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30.0),
                              bottomLeft: Radius.circular(30),
                              topRight: Radius.circular(30),
                              bottomRight: Radius.circular(10))),
                    ),
                    hintText: "Enter your email",
                    hintStyle: TextStyle(color: Colors.white54),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0),
                        borderSide: BorderSide.none),
                    filled: true,
                    fillColor: Colors.white.withOpacity(0.1)),
                controller: _email,
                  validator: (String value){
                      if(value.isEmpty){
                        return "Please enter your email";
                      }
                      
                      return null;
                      
                  },
                onSaved: (String email){
                  
                }
              ),            
              SizedBox(height: 20.0),
              TextFormField(
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(16.0),
                    prefixIcon: Container(
                      padding: const EdgeInsets.only(top: 16.0, bottom: 16.0),
                      margin: const EdgeInsets.only(right: 8.0),
                      child: Icon(Icons.phone_in_talk, color: Color(0xFF000080)),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30.0),
                              bottomLeft: Radius.circular(30),
                              topRight: Radius.circular(30),
                              bottomRight: Radius.circular(10))),
                    ),
                    hintText: "Enter your phone number",
                    hintStyle: TextStyle(color: Colors.white54),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0),
                        borderSide: BorderSide.none),
                    filled: true,
                    fillColor: Colors.white.withOpacity(0.1)),
                    controller: _phone,
                     validator: (String value){
                      if(value.isEmpty){
                        return "Please enter your Mobile No.";
                      }
                      
                      return null;
                      
                  },
                onSaved: (String phone){
                  
                }
              ),
            
              SizedBox(height: 20.0,),
               TextFormField(
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(16.0),
                    prefixIcon: Container(
                      padding: const EdgeInsets.only(top: 16.0, bottom: 16.0),
                      margin: const EdgeInsets.only(right: 8.0),
                      child: Icon(Icons.lock, color: Color(0xFF000080),),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30.0),
                              bottomLeft: Radius.circular(30),
                              topRight: Radius.circular(30),
                              bottomRight: Radius.circular(10))),
                    ),
                    hintText: "Enter your password",
                    hintStyle: TextStyle(color: Colors.white54),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0),
                        borderSide: BorderSide.none),
                    filled: true,
                    fillColor: Colors.white.withOpacity(0.1)),
                  obscureText: true,
                  controller: _password,
                  validator: (String value){
                      if(value.isEmpty){
                        return "Please enter your password";
                      }
                      
                      return null;
                      
                  },
                onSaved: (String password){
                  
                }
              ),
               
              SizedBox(height: 10.0,),

              
              Expanded(child:  TextFormField(
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(16.0),
                    prefixIcon: Container(
                      padding: const EdgeInsets.only(top: 16.0, bottom: 16.0),
                      margin: const EdgeInsets.only(right: 8.0),
                      child: Icon(Icons.lock, color: Color(0xFF000080),),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30.0),
                              bottomLeft: Radius.circular(30),
                              topRight: Radius.circular(30),
                              bottomRight: Radius.circular(10))),
                    ),
                    hintText: "Confirm Passwrd",
                    hintStyle: TextStyle(color: Colors.white54),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0),
                        borderSide: BorderSide.none),
                    filled: true,
                    fillColor: Colors.white.withOpacity(0.1)),
                  obscureText: true,
                  controller: _confirmPassword,
                  validator: (String value){
                      if(value.isEmpty){
                        return "Please enter  password";
                      }
                      
                      return null;
                      
                  },
                onSaved: (String password){
                  
                }
              ),),
              
              SizedBox(height: 10.0,),

              SizedBox(
                width: double.infinity,
                  child: RaisedButton(
                    color: Color(0xFF87ceeb),
                    textColor: Theme.of(context).primaryColor,
                    padding: const EdgeInsets.all(20.0),
                     child: Text('Register'.toUpperCase(), style: TextStyle(fontSize: 17.0)),
                  onPressed: () {
                    if(_formkey.currentState.validate()){
                       Navigator.pushNamed(context, '/login');

                    }
                    else{
                      print("unsuccessfully");
                    }
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0)
                  ),
                ),
              ),
              Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  FlatButton(
                     textColor: Colors.white70,
                        onPressed: () {
                        Navigator.pushNamed(context, '/login');
                       },
                      child: Text('Login'.toUpperCase())
                    ),
                  Container(
                    color: Colors.white54,
                    width: 2.0,
                    height: 20.0,
                    
                    ),
                  FlatButton(
                      textColor: Colors.white70,
                      onPressed: () {
                        Navigator.pushNamed(context, '/login');
                       },
                      child: Text('forgot account'.toUpperCase())),
                ],
              ),
              SizedBox(height: 10.0,)
             
            ],
          ),
        ),
      ),
    ));
    
    
    Future UserRegistration() async{
      var APIURL = "";
      
      Map mapeddate = {
        'first_name': _firstName.text,
      };
    }
  }
}

