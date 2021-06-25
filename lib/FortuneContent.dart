import 'package:falcimapp/MainPage.dart';
import 'package:flutter/material.dart';

class FortuneContent extends StatefulWidget {
  @override
  _FortuneContentState createState() => _FortuneContentState();
}

class _FortuneContentState extends State<FortuneContent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Colors.teal[900],

          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: MediaQuery.of(context).size.height*.9,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Colors.green[100],
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(.2),
                      offset: Offset(0,-4),
                      blurRadius: 8,
                    )
                  ]
              ),
              child:
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 20,
                      left: 24,
                      right: 20,

                    ),
                    child: Text("Aşk Falı Yorumu",
                      style:TextStyle(
                        fontSize: 36,
                        fontWeight: FontWeight.bold,
                        color: Colors.teal[900],
                      ) ,
                    ),
                  ),
                  Divider(
                    color: Colors.green,
                    height: 30,
                  ),
                  Padding(
                    padding: EdgeInsets.all(30.0),
                    child: Text(
                        '''Bu kart, çocuksu bakış açısını temsil eder. Asa Prensi, genel ve güncel hayatı da temsil ettiği gibi büyük şanslara da sahip olduğunuzu haberdar eder.
Oldukça renkli ve neşeli bir kimliğe sahipsiniz. Sizi sınırlayan ya da sınırlamak isteyen insanlardan hemen uzaklaşıyorsunuz. Sizin için doğru ortamı ve insanları seçebilecek sezgilere sahipsiniz.
Dengeli duygulara sahip olmanız herkesin sizi koşulsuz sevmesini ve güvenmesini sağlıyor.
Aynı zamanda sorunlar yaşandığında problem ne olursa olsun masaya konuyu yatırmayı, üzülmek yerine çözüme gitmeyi de simgeler.
İçsel ve duygusal kaoslara olan tahammülsüzlüğünüzü ve daima mutlu olma halini de temsil eder. Siz mutluluğu sadece kendiniz için değil aynı zamanda çevreniz için de istemeyi misyon edinmişsiniz.
Çok hassas, sezgisi güçlü, karşısındaki fazlasıyla önemseyen bir profil çizen özellikler bu kartın odak noktasıdır.
Dolayısıyla duyguların çevrelediği bu özellikler duygusal çalkantılara zemin hazırlamaktadır.
Eliniz ayağınız bir birine girebilir, sakarlıklarınız çok artabilir. Biraz heyecanlı bir yapıda olmanız nedeniyle karşılaşacağınız heyecan veren olaylardan dolayı da heyecanınız artabilir, ruhunuzu dengelemelisiniz.

                       '''
                    ),
                  ),
                  Center(
                    child: GestureDetector(
                      child: ElevatedButton(
                        onLongPress: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => MainPage()));
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.teal[900],
                          onPrimary: Colors.white,
                        ),
                        child: Text("Geri Dön",
                          style: TextStyle(color: Colors.white),),
                      ),
                    ),

                  ),
                  SizedBox(height: 40,),
                  Center(
                    child: OutlineButton(
                      child: Text(
                        'Eğer bu falı beğendiyseniz lütfen beğen tuşuna basınız!',
                        style: TextStyle(
                          fontSize: 10.0,
                        ),
                      ),
                      borderSide: BorderSide(
                        color: Colors.teal[900],
                        width: 5.0,
                      ),
                      onPressed: (){},
                    ),
                  ),
                  Center(
                    child: Ink(
                      decoration: ShapeDecoration(
                        color: Colors.teal[900],
                        shape: CircleBorder(),
                      ),
                      child: IconButton(
                        icon: Icon(Icons.favorite,color: Colors.green,),
                        iconSize: 50.0,
                        splashColor: Colors.green[900],
                        onPressed: () {
                        },
                      ),

                    ),

                  ),

                ],
              ),
            ),
          ),
        ],
      ),
    );



    // );


  }

}







