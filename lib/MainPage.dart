
import 'package:falcimapp/BurcDetail.dart';
import 'package:falcimapp/grafik.dart';
import 'package:fl_chart/fl_chart.dart';
import 'AstrolojikHarita.dart';
import 'Rating.dart';
import 'yukselen.dart';
import 'screen/yukselenlist.dart';
import 'package:flutter/material.dart';
import 'AboutPage.dart';
import 'Burclar.dart';
import 'FortuneContent.dart';
import 'News.dart';
import 'Settings.dart';
import 'UserProfile.dart';
import 'animation.dart';



class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal[900],
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
                decoration: BoxDecoration(
                  gradient: LinearGradient(colors: <Color>[
                    Colors.green[100],
                    Colors.white,
                  ]),
                ),
                child: Container(
                  child: Column(
                    children: <Widget>[
                      Material(
                        borderRadius: BorderRadius.all(Radius.circular(200.0)),
                        elevation: 10,
                        child: ClipOval(
                            child: Image.asset('images/fal.jpg',width: 80,height:100 ,)),
                      ),
                    ],
                  ),
                )
            ),
            CustomListTile(Icons.person,'Profile',()=>{ Navigator.push(context, MaterialPageRoute(builder: (context) => UserProfile()))}),
            CustomListTile(Icons.accessibility_new,'Burçlar',()=>{(Navigator.push(context, MaterialPageRoute(builder: (context) => Burclar())))}),
            CustomListTile(Icons.star,'Bizi oylayın',()=>{ Navigator.push(context, MaterialPageRoute(builder: (context) => Degerlendir()))}),
            CustomListTile(Icons.settings,'Settings',()=>{ Navigator.push(context, MaterialPageRoute(builder: (context) => Settings()))}),
            CustomListTile(Icons.contact_page,'Hakkımızda',()=>{Navigator.push(context, MaterialPageRoute(builder: (context) => AboutPage()))}),
            CustomListTile(Icons.auto_awesome_motion,'News',()=>{Navigator.push(context, MaterialPageRoute(builder: (context) => News()))}),
            CustomListTile(Icons.access_time_rounded,'Yükselen',()=>{Navigator.push(context, MaterialPageRoute(builder: (context) => YukselenList()))}),
            CustomListTile(Icons.announcement_rounded,'En Tehlikeli Burçlar',()=>{Navigator.push(context, MaterialPageRoute(builder: (context) =>  BarChartSample4()))}),
            CustomListTile(Icons.attach_file_sharp,'Astrolojik Harita',()=>{Navigator.push(context, MaterialPageRoute(builder: (context) =>  FileDownloadView()))}),






          ],
        ),
      ),

      backgroundColor: Colors.green[100],
      body: Stack(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(20.0),
            height: MediaQuery.of(context).size.height * .3,
            decoration: BoxDecoration(
              color: Colors.teal[900],
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(50.0),
                bottomRight: Radius.circular(50.0),
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(12.0),
                child: Center(
                  child: Wrap(
                    spacing: 20.0,
                    runSpacing: 20.0,

                    children: <Widget>[
                      SizedBox(
                        width: 300.0,
                        height: 300.0,
                        child: Card(
                          color: Colors.green[200],
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Column(
                              children: <Widget>[
                                Image.asset('images/kalp.png',width:130.0,),
                                SizedBox(
                                  height: 20.0,
                                ),
                                ElevatedButton(
                                  onPressed: () {
                                    Navigator.push(context, MaterialPageRoute(builder: (context) => FortuneContent()));
                                  },
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.teal[900],
                                    onPrimary: Colors.white,
                                  ),
                                  child: Text('Aşk Kartı', style: TextStyle(fontSize: 20),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 300.0,
                        height: 300.0,
                        child: Card(
                          color: Colors.green[200],
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Column(
                              children: <Widget>[
                                Image.asset('images/kariyer.png',width: 120.0,),
                                SizedBox(
                                  height: 20.0,
                                ),
                                ElevatedButton(
                                  onPressed: () {

                                  },
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.teal[900],
                                    onPrimary: Colors.white,
                                  ),
                                  child: Text('Kariyer Kartı', style: TextStyle(fontSize: 20),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 300.0,
                        height: 300.0,
                        child: Card(
                          color: Colors.green[200],
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Column(
                              children: <Widget>[
                                Image.asset('images/saglik.png',width: 120.0,),
                                SizedBox(
                                  height: 15.0,
                                ),
                                ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.teal[900],
                                    onPrimary: Colors.white,
                                  ),
                                  child: Text('Sağlık Kartı', style: TextStyle(fontSize: 20),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 300.0,
                        height: 300.0,
                        child: Card(
                          color: Colors.green[200],
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Column(
                              children: <Widget>[
                                Image.asset('images/para.png',width: 120.0,),
                                SizedBox(
                                  height: 20.0,
                                ),
                                ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.teal[900],
                                    onPrimary: Colors.white,
                                  ),
                                  child: Text('Para Kartı', style: TextStyle(fontSize: 20),
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
              )
            ],
          ),

        ],
      ),
    );

  }
}

class CustomListTile extends StatelessWidget {
  IconData icon;
  String text;
  Function onTap;

  CustomListTile(this.icon, this.text, this.onTap);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            border: Border(bottom: BorderSide(color: Colors.grey.shade400))
        ),
        child: InkWell(
          splashColor: Colors.green,
          onTap: onTap,
          child: Container(
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Icon(icon),
                    Text(text, style: TextStyle(
                      fontSize: 16.0,
                    ),)
                  ],
                ),
                Icon(Icons.arrow_right),
              ],
            ),
          ),
        ),
      ),
    );
  }
}