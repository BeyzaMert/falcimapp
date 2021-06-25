import 'package:flutter/material.dart';

class AboutPage extends StatefulWidget {
  @override
  _AboutPageState createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[100],
      appBar: AppBar(
        title: Text('Hakkımızda' ,style: TextStyle(color: Colors.green),),
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
      body:
      Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text('''Kızıl Abla ile Fal Dünyası; kahve falı, tarot, astroloji gibi mistik öğretilerin kadim bilgileri ile derin öğrenme yeteneğini harmanlayıp, yaşama dair kişiye özel analiz sunan, dünyanın bir numaralı fal uygulamasıdır.Kızıl Abla ile Fal Dünyası, yalnızca bir fal uygulamasının çok daha ötesindedir. Kişinin geçmişine dair değerlendirmeler yaparken, şu anı ile ilgili çıkarımlarda bulunup, elindeki verilerle geleceğe de ışık tutar.

Bu uygulama Dr. Öğretim Üyesi Ahmet Cevahir ÇINAR tarafından yürütülen 3301456 kodlu MOBİL PROGRAMLAMA dersi kapsamında 193311039 numaralı Beyza Nur Mert tarafından 25 Nisan 2021 günü yapılmıştır.''',
            textAlign: TextAlign.center,style: TextStyle(
              fontSize: 30,
            ),),
        ],
      ),
    );


  }
}
