import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      /*
      İçerisinde tema vb propertyleri olan home propertysi vs bulunan uygulamamız için temel bir yapı sunuyor bize
      */

      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(),
    );
  }
}

class TutorialOnePage extends StatelessWidget {
  //stabil stless sayfa yapısı
  const TutorialOnePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      "asasdasd",
      //Text widgetının bazı özellikleri var örneğin
      style: TextStyle(
        //text stilleri ile ilgili şeyleri yapabiliyoruz. style özelliği bizden TextStyle bekliyormuş
        //TextStyle içinde de çeşitli texte stil verebilmek için özellikler var
        color: Colors.red,
        fontWeight: FontWeight.w500,
        fontStyle: FontStyle.normal,
        fontSize: 30,
      ),
    );
  }
}

class TutorialButtonPage extends StatelessWidget {
  const TutorialButtonPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    void ButonIcinOnPressed(){
      debugPrint("buton tıklandı");
    }

    return ElevatedButton(
      //stil için ElevatedButton.styleFrom kullanıyoruz onun içerisinde shape özelliği var
      //shape özelliği de OutlinedBorder bekliyor bizden biz de OutlinedBorder dan türetilmiş olan şeyleri de kullanabiliriz
      //mesela RoundedRectangleBorder OutlinedBorder dan türetilmiş olan bir sınıf olduğu için onu kullanıyoruz
      //borderRadius diye bir özelliği varmış vs vs böyle gidiyor mantık bu
      //buton widgetının childına bir text ekledik yani buton üzerinde gözükecek olan yazıyı belirlemiş olduk bu şekilde

        onPressed: () => ButonIcinOnPressed(), //onPressed bu şekilde verebiliriz ayrı yerde bir fonksiyon olusturup veya direkt buraya da yazabilirdik {} açıp
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.red,
          shape:  RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          )
        ),
        child: const Text("deneme"),

    );
  }
}
