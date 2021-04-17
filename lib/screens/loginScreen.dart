import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  
TextEditingController _email  = TextEditingController();
TextEditingController _password  = TextEditingController();

final GlobalKey<FormState> _formkey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea( 
       child: ListView(
         shrinkWrap: true,
        children: <Widget>[
            SizedBox(
            height: 700,
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
                Container(
                  height: 70,
                  margin: const EdgeInsets.only(top: 120.0, bottom: 10.0),
                  child: Text('Welcome Back'.toUpperCase(),
                      style: TextStyle(
                          color: Colors.white70,
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold)),
                ),
                SizedBox(height: 20.0),
                TextFormField(
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(16.0),
                      prefixIcon: Container(
                        padding: const EdgeInsets.only(top: 16.0, bottom: 16.0),
                        margin: const EdgeInsets.only(right: 8.0),
                        child: Icon(Icons.person, color: Color(0xFF000080),),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(30.0),
                                bottomLeft: Radius.circular(30),
                                topRight: Radius.circular(30),
                                bottomRight: Radius.circular(10))),
                      ),
                      hintText: "enter your email",
                      hintStyle: TextStyle(color: Colors.white54),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0),
                          borderSide: BorderSide.none,
                        
                          
                          ),
                      filled: true,
                      fillColor: Colors.white.withOpacity(0.1)),
                      controller: _email,
                      validator: (String value){
                        if(value.isEmpty){
                          return "Please enter email address";
                        }
                        
                        return null;
                        
                    },
                  onSaved: (String email){
                    
                  },
                
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
                      hintText: "enter your password",
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
                          return "Please enter password";
                        }
                        
                        return null;
                        
                    },
                  onSaved: (String password){
                    
                  },
                ),
                SizedBox(height: 30.0),
                
                SizedBox(
                  width: double.infinity,
                    child: RaisedButton(
                      color: Color(0xFF87ceeb),
                      textColor: Theme.of(context).primaryColor,
                      padding: const EdgeInsets.all(20.0),
                       child: Text('Login'.toUpperCase(), style: TextStyle(fontSize: 17.0),),
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
                          Navigator.pushNamed(context, '/');
                        },
                        child: Text('create account'.toUpperCase())
                      ),
                    Container(
                      color: Colors.white54,
                      width: 2.0,
                      height: 20.0,
                      
                      ),
                    FlatButton(
                        textColor: Colors.white70,
                        onPressed: () {},
                        child: Text('forgot account'.toUpperCase())
                        ),
                  ],
                ),
                SizedBox(height: 10.0,)
              ],
                  ),
                ),
            ),
            ),
          ]
       ),
    ));
  }
}


