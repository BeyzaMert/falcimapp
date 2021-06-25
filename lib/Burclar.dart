import 'package:flutter/material.dart';
import 'package:falcimapp/MainPage.dart';
import 'animation.dart';

class Burclar extends StatefulWidget {
  @override
  _BurclarState createState() => _BurclarState();
}

class _BurclarState extends State<Burclar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Burçlar'),
        backgroundColor: Colors.indigo,
        leading:IconButton(
          onPressed: (){
    Navigator.of(context).pop();
    },
        icon:Icon(
          Icons.arrow_back,
          color: Colors.white,
        )
    ),
      ),
      body: Container(
        child: ListView(

          children: <Widget>[
            ListTile(
              leading: Image.asset('images/koc.jpg',width: 100,height: 100,),
              title: Text("Koç Burcu",style: TextStyle(fontSize: 20),),
              subtitle: Text("(21 Mart- 20 Nisan)"),
              trailing: Icon(Icons.arrow_right_alt_outlined),
             onTap: () {
               Navigator.push(context, MaterialPageRoute(builder: (context) => BurccDetail()));
             },
            ),
            ListTile(
              leading: Image.asset('images/boga.jpg',width: 100,height: 100,),
              title: Text("Boğa Burcu",style: TextStyle(fontSize: 20),),
              subtitle: Text("(21 Nisan - 21 Mayıs)"),
              trailing: Icon(Icons.arrow_right_alt_outlined),
              onTap: (){},
            ),
            ListTile(
              leading: Image.asset('images/ikizler.jpg',width: 100,height: 100,),
              title: Text("İkizler Burcu",style: TextStyle(fontSize: 20),),
              subtitle: Text("(22 Mayıs- 22 Haziran)"),
              trailing: Icon(Icons.arrow_right_alt_outlined),
              onTap: (){},
            ),
            ListTile(
              leading: Image.asset('images/yengec.jpg',width: 100,height: 100,),
              title: Text("Yengeç Burcu",style: TextStyle(fontSize: 20),),
              subtitle: Text(" (23 Haziran- 22 Temmuz)"),
              trailing: Icon(Icons.arrow_right_alt_outlined),
              onTap: (){},
            ),
            ListTile(
              leading: Image.asset('images/aslan.jpg',width: 100,height: 100,),
              title: Text("Aslan Burcu",style: TextStyle(fontSize: 20),),
              subtitle: Text("(23 Temmuz- 22 Ağustos)"),
              trailing: Icon(Icons.arrow_right_alt_outlined),
              onTap: (){},
            ),
            ListTile(
              leading: Image.asset('images/basak.jpg',width: 100,height: 100,),
              title: Text("Başak Burcu",style: TextStyle(fontSize: 20),),
              subtitle: Text("(23 Ağustos- 22 Eylül)"),
              trailing: Icon(Icons.arrow_right_alt_outlined),
              onTap: (){},
            ),
            ListTile(
              leading: Image.asset('images/terazi.jpg',width: 100,height: 100,),
              title: Text("Terazi Burcu",style: TextStyle(fontSize: 20),),
              subtitle: Text("(23 Eylül- 22 Ekim)"),
              trailing: Icon(Icons.arrow_right_alt_outlined),
              onTap: (){},
            ),
            ListTile(
              leading: Image.asset('images/akrep.jpg',width: 100,height: 100,),
              title: Text("Akrep Burcu",style: TextStyle(fontSize: 20),),
              subtitle: Text("(23 Ekim- 21 Kasım)"),
              trailing: Icon(Icons.arrow_right_alt_outlined),
              onTap: (){},
            ),
            ListTile(
              leading: Image.asset('images/yay.jpg',width: 100,height: 100,),
              title: Text("Yay Burcu",style: TextStyle(fontSize: 20),),
              subtitle: Text("(22 Kasım- 21 Aralık)"),
              trailing: Icon(Icons.arrow_right_alt_outlined),
              onTap: (){},
            ),
            ListTile(
              leading: Image.asset('images/oglak.jpg',width: 100,height: 100,),
              title: Text("Oğlak Burcu",style: TextStyle(fontSize: 20),),
              subtitle: Text("(22 Aralık- 21 Ocak)"),
              trailing: Icon(Icons.arrow_right_alt_outlined),
              onTap: (){},
            ),
            ListTile(
              leading: Image.asset('images/kova.jpg',width: 100,height: 100,),
              title: Text("Kova Burcu",style: TextStyle(fontSize: 20),),
              subtitle: Text("(22 Ocak- 19 Şubat)"),
              trailing: Icon(Icons.arrow_right_alt_outlined),
              onTap: (){},
            ),
            ListTile(
              leading: Image.asset('images/balık.jpg',width: 100,height: 100,),
              title: Text("Balık Burcu",style: TextStyle(fontSize: 20),),
              subtitle: Text("(20 Şubat- 20 Mart)"),
              trailing: Icon(Icons.arrow_right_alt_outlined),
              onTap: (){},
            ),
          ],
        ),
      ),
    );
  }
}
