import 'package:falcimapp/Burclar.dart';
import 'package:falcimapp/randombutton.dart';
import 'package:flutter/material.dart';
import 'package:falcimapp/MainPage.dart';

class BurccDetail extends StatefulWidget {


  @override
  _BurccDetailState createState() => _BurccDetailState();
}

class _BurccDetailState extends State<BurccDetail> {
  double _updateState() {
    setState(() {
      // double width=400;
      //double height=400;
    });
  }
  final String title = 'Koç Burcu';
  @override
  Widget build(BuildContext context) => MaterialApp(
    debugShowCheckedModeBanner: false,
    title: title,
    theme: ThemeData(primarySwatch: Colors.deepOrange),
    home: MainPage(title: title),
  );
}
class MainPage extends StatefulWidget {
final String title;
const MainPage({
@required this.title,
});

@override
_MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) => Scaffold(
    backgroundColor: Colors.green[50],
    appBar: AppBar(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      elevation: 1,
      leading: IconButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => MainPage()));
          },
          icon:Icon(
            Icons.arrow_back,
            color: Colors.green,
          )
      ),
    ),
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          RandomButtonWidget(),
          Stack(
            children: [
              Container(
                color: Colors.teal[900],

              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: Colors.green[200],
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(.2),
                          offset: Offset(0,-3),
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
                        child: Text("Koç Burcu Özellikleri",
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
                            '''
Grup: Ateş/erkeksi/değişken
Yönetici Gezegen: Mars
Renk: Ateş kırmızı, nar çiçeği
Uğurlu Taş: Pırlanta, yakut, ameist, demir
Şanslı Sayı: 9
Şanslı Gün: Salı
Karşıt Burç: Terazi
Şehirler: Floransa, Verona, Marsilya, Birminghom, Saragosa
Metal: Demir
Çiçekler: Lale, gelincik, renkli sardunya, hanımeli
Koç, Burçlar kuşağının ilk burcudur. Hareketli ve enerjik oluşları ile tanınırlar. Ben egoları çok fazla gelişmiştir. BEN, onların aynası olmuştur adeta. Bu burçta doğanlar çok pratiktirler. Olaylar karşısında coşkularını gizleyemezler. Yaşam yolunda canlılıklarını ve atılganlıklarını yitirmeden heyecanla ilerlerler. Merak ettikleri konularda olabildiğince yaratıcılardır. Amaçları doğrultusunda ilerlerken, kendilerini eylemleri ile kanıtlamak isterler. Eğer Koç'lar girişimde bulunacakları zaman izleyecekleri rotayı ayrıntıları ile planlarsa, enerjik yapılarının da yardımı ile daha da üretken olabilirler. Bencilliklerinden kaynaklanan sabırsızlıkları ve söz dinlemez yaratılışları yüzünden zaman zaman güç durumlara düştükleri de olur. Böyle anlarda başladıkları işlerini sonuçlandırmadan bırakırlar. Konuşmaları abartılıdır, bazen gerçekleri değiştirerek anlatırlar. Kavrama yetenekleri fazla olan Koç'lar yaşam sahnesinin başrolünde olmayı tercih ederler. Aşırı kıskanç ve bağımsızlıklarına düşkün olurlar.


                       '''
                        ),
                      ),
                      Center(
                        child: GestureDetector(
                          child: ElevatedButton(
                            onLongPress: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => Burclar()));
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


                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    ),

  );
}

