import 'dart:convert';
import 'package:flutter/material.dart';
import 'MainPage.dart';
import 'main.dart';
import 'package:http/http.dart' as http;



class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
              child: Divider(color: Colors.purple[900],),
            ),
            Container(
              width: 1000,
              child: Padding(
                padding: EdgeInsets.symmetric(
                    vertical: 16.0, horizontal: 16.0),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.email),
                    labelText: 'Email',
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.teal[500],
                        )
                    ),
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
            ),
            Container(
              width: 1000,
              child: Padding(
                padding: EdgeInsets.symmetric(
                    vertical: 16.0, horizontal: 16.0),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.account_circle),
                    labelText:  'Name ',
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.teal[500],
                        )
                    ),
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
            ),
            Container(
              width: 1000,
              child: Padding(
                padding: EdgeInsets.symmetric(
                    vertical: 16.0, horizontal: 16.0),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.account_circle),
                    labelText: 'Surname',
                    //'Surname',
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.teal[500],
                        )
                    ),
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
            ),
            Container(
              width: 1000,
              child: Padding(
                padding: EdgeInsets.symmetric(
                    vertical: 16.0, horizontal: 16.0),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.phone),
                    labelText: 'Phone Number ',
                    //'Phone Number',
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.teal[500],
                        )
                    ),
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
            ),
            Container(
              width: 1000,
              child: Padding(
                padding: EdgeInsets.symmetric(
                    vertical: 16.0, horizontal: 16.0),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.security),
                    labelText: 'Password ',
                    //'Password',
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.teal[500],
                        )
                    ),
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
            ),
            Container(
              width: 1000,
              child: Padding(
                padding: EdgeInsets.symmetric(
                    vertical: 16.0, horizontal: 16.0),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.date_range_outlined),
                    labelText: 'Doğum Tarihi ',
                    //'Doğum Tarihi',
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.teal[500],
                        )
                    ),
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
            ),
            Container(
              width: 1000,
              child: Padding(
                padding: EdgeInsets.symmetric(
                    vertical: 16.0, horizontal: 16.0),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.access_time_outlined),
                    labelText:'Doğum Saati ',
                    //'Doğum Saati',
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.teal[500],
                        )
                    ),
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
            ),

            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (
                    context) => MainPage()));
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.teal[500],
                onPrimary: Colors.white,
              ),
              child: Text("REGISTER",
                style: TextStyle(color: Colors.white),),
            ),
            SizedBox(height: 10,),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (
                    context) => MyApp()));
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.teal[500],
                onPrimary: Colors.white,
              ),
              child: Text("Go To Back HomePage",
                style: TextStyle(color: Colors.white),),
            ),
          ],
        ),
      ),
    );
  }
}



