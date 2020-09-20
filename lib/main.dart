import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MyApp());
}
/*
 media query
 validation
 what we will do

*/
class MyApp extends StatelessWidget {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: Stack(
        children: <Widget>[
          Container(
              height: 700,
              width: 50,
              margin: EdgeInsets.fromLTRB(15, 415, 0, 300),
              child: Icon(
                Icons.radio_button_checked,
                color: Colors.deepPurple,
              )),
          Container(
            height: 140,
            width: 250,
            margin: EdgeInsets.fromLTRB(20, 35, 250, 0),
            child: Text(
              'Login',
              style: TextStyle(
                color: Colors.black,
                height: 3,
                fontSize: 45,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            width: 50,
            height: 50,
            margin: EdgeInsets.fromLTRB(250, 100, 0, 0),
            decoration: BoxDecoration(
                color: Colors.deepPurple,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.deepPurple,
                    blurRadius: 20,
                    spreadRadius: 1,
                    offset: Offset(0, 0),
                  )
                ]),
            // color: Colors.red,
            //  shape: BoxShape.circle,
          ),
          Container(
            height: 100,
            width: 60,
            margin: EdgeInsets.fromLTRB(335, 75, 0, 0),
            decoration: BoxDecoration(
                color: Colors.deepPurple,
                //shape: BoxShape.circle,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(60),
                    topLeft: Radius.circular(60)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.deepPurple,
                    blurRadius: 20,
                    spreadRadius: 1,
                    offset: Offset(0, 0),
                  )
                ]),
          ),
          Card(
            margin: EdgeInsets.fromLTRB(20, 250, 20, 370),
            elevation: 50,
            child: Form(
              key: _formKey,
              child: Column(
                children: <Widget>[
                  TextFormField(
                    validator: (String value){
                      if(!value.contains('@') || !value.contains('.com')){
                        return 'Email must be example@mail.com';
                      }
                      return null;
                    },
                    autofocus: false,
                    decoration: InputDecoration(
                        icon: Icon(
                          Icons.person_outline,
                          color: Colors.deepPurple,
                        ),
                        hintText: 'Email'),
                  ),
                  TextFormField(
                    autofocus: false,
                    validator: (value){
                      if(value.length < 6){
                        return 'Password must be over than 6';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                        icon: Icon(
                          Icons.vpn_key,
                          color: Colors.deepPurple,
                        ),
                        hintText: 'Password'),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: 50,
            height: 50,
            margin: EdgeInsets.fromLTRB(100, 625, 0, 0),
            decoration: BoxDecoration(
                color: Colors.deepPurple,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.deepPurple,
                    blurRadius: 20,
                    spreadRadius: 1,
                    offset: Offset(0, 0),
                  )
                ]),
            // color: Colors.red,
            //  shape: BoxShape.circle,
          ),
          Container(
            height: 100,
            width: 60,
            margin: EdgeInsets.fromLTRB(0, 600, 0, 0),
            decoration: BoxDecoration(
                color: Colors.deepPurple,
                //shape: BoxShape.circle,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(60),
                    bottomRight: Radius.circular(60)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.deepPurple,
                    blurRadius: 20,
                    spreadRadius: 1,
                    offset: Offset(0, 0),
                  )
                ]),
          ),
          GestureDetector(
            onTap: (){
              if(_formKey.currentState.validate()){
                // if the form is validated
                print('validate');
              }else{
                print('provide an email and password');
              }
            },
            child: Container(
              child: Center(
                  child: Text(
                'LOGIN',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.normal,
                    fontSize: 15),
              )),
              height: 50,
              width: 180,
              margin: EdgeInsets.fromLTRB(213, 410, 0, 0),
              decoration: BoxDecoration(
                  color: Colors.deepPurple,
                  //shape: BoxShape.circle,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(60),
                      topLeft: Radius.circular(60)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.deepPurple,
                      blurRadius: 20,
                      spreadRadius: 1,
                      //  offset: Offset(0, 0),
                    )
                  ]),
            ),
          ),
          Container(
            height: 120,
            width: 180,
            margin: EdgeInsets.fromLTRB(200, 555, 0, 0),
            child: Text(
              'Sign Up',
              style: TextStyle(
                color: Colors.black,
                height: 3,
                fontSize: 45,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
              //color: Colors.red,
              height: 700,
              width: 150,
              margin: EdgeInsets.fromLTRB(50, 415, 0, 300),
              child: Center(
                child: Text(
                  'Remember Me',
                  style: TextStyle(fontSize: 17),
                ),
              ))
        ],
      )),
    );
  }
}
