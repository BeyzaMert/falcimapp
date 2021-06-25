import 'package:flutter/material.dart';

class UserProfile extends StatefulWidget {
  @override
  _UserProfileState createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[50],
      appBar: AppBar(

        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 1,
        leading: IconButton(
            onPressed: (){
              Navigator.of(context).pop();
            },
            icon:Icon(
              Icons.arrow_back,
              color: Colors.green,
            )
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage('images/ben.jpg'),
          ),
          Text(
            "Beyza Nur Mert",
            style: TextStyle(
              fontSize: 40.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 20,
            width: 20,
            child: Divider(
              color: Colors.black,
            ),
          ),
          Card(
            color: Colors.white,
            margin: EdgeInsets.symmetric(vertical: 10,horizontal: 25,),
            child: ListTile(
              leading: Icon(Icons.mail,color: Colors.teal,
              ),
              title: Text(
                "beyzamrt39@gmail.com",
                style: TextStyle(color: Colors.black,
                  fontSize: 20,
                ),
              ),
            ),
          ),
          Card(
            color: Colors.white,
            margin: EdgeInsets.symmetric(vertical: 10,horizontal: 25,),
            child: ListTile(
              leading: Icon(Icons.account_circle,color: Colors.teal,
              ),
              title: Text(
                "Beyza Nur",
                style: TextStyle(color: Colors.black,
                  fontSize: 20,
                ),
              ),
            ),
          ),
          Card(
            color: Colors.white,
            margin: EdgeInsets.symmetric(vertical: 10,horizontal: 25,),
            child: ListTile(
              leading: Icon(Icons.account_circle,color: Colors.teal,
              ),
              title: Text(
                "Mert",
                style: TextStyle(color: Colors.black,
                  fontSize: 20,
                ),
              ),
            ),
          ),
          Card(
            color: Colors.white,
            margin: EdgeInsets.symmetric(vertical: 10,horizontal: 25,),
            child: ListTile(
              leading: Icon(Icons.date_range_outlined,color: Colors.teal,
              ),
              title: Text(
                "Doğum Tarihi : 03.01.2000",
                style: TextStyle(color: Colors.black,
                  fontSize: 20,
                ),
              ),
            ),
          ),
          Card(
            color: Colors.white,
            margin: EdgeInsets.symmetric(vertical: 10,horizontal: 25,),
            child: ListTile(
              leading: Icon(Icons.access_time_outlined,color: Colors.teal,
              ),
              title: Text(
                "Doğum Saati : 12.50",
                style: TextStyle(color: Colors.black,
                  fontSize: 20,
                ),
              ),
            ),
          ),

        ],
      ),
    );
  }
}
