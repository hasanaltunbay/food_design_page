import 'package:flutter/material.dart';

class Anasayfa extends StatefulWidget{
  const Anasayfa({super.key});

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  @override
  Widget build(BuildContext context) {
    var ekranBilgisi=MediaQuery.of(context);
    final double ekranGenisligi=ekranBilgisi.size.width;
    final double ekranYuksekligi=ekranBilgisi.size.height;
    print(ekranGenisligi);
    print(ekranYuksekligi);


    return Scaffold(
      appBar: AppBar(title: Text("Menemen",style: TextStyle(color: Colors.white,fontSize: ekranGenisligi/16),),
      backgroundColor: Colors.red,
      centerTitle: true,),
      body: Column(
        children: [
          Padding(
            padding:  EdgeInsets.only(top: ekranGenisligi/51),
            child: Text("Biber Domates ve Yumurtalı",style: TextStyle(fontSize: ekranGenisligi/14,fontWeight: FontWeight.bold,color: Colors.red),),
          ),
          Padding(
            padding: EdgeInsets.only(top: ekranGenisligi/50),
            child: Image.asset("resimler/menemen.jpg"),
          ),
          Padding(
            padding:  EdgeInsets.only(top: ekranGenisligi/50),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Chip(icerik: "Kaşar"),
                Chip(icerik: "Domates"),
                Chip(icerik: "Biber"),
                Chip(icerik: "Yumurta"),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(ekranGenisligi/100),
            child: Column(
              children: [
                Text("20 dk",style: TextStyle(color: Colors.black,fontSize: ekranGenisligi/16,fontWeight: FontWeight.bold),),
                Padding(
                  padding:  EdgeInsets.all(ekranGenisligi/100),
                  child: Text("Teslimat",style: TextStyle(fontSize: ekranGenisligi/14,fontWeight: FontWeight.bold,color: Colors.red),),
                ),
                Text("Usta ellerle yapılmış menemeni tatmaya hazır mısınız  ?",style: TextStyle(color: Colors.black,fontSize: ekranGenisligi/16),
                textAlign: TextAlign.center,),
              ],
            ),
          ),
          Padding(
            padding:  EdgeInsets.all(ekranGenisligi/50),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("120 ₺",style: TextStyle(color: Colors.red,fontSize: ekranYuksekligi/15,fontWeight: FontWeight.bold),),
                SizedBox(width: ekranGenisligi/2,height: ekranGenisligi/8,
                  child: TextButton(onPressed: (){}, child:Text("Sipariş Ekle",style: TextStyle(color: Colors.white,fontSize: ekranGenisligi/22),),
                    style: TextButton.styleFrom(backgroundColor: Colors.red,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5))),),),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Chip extends StatelessWidget {
  String icerik;
  Chip({required this.icerik});

  @override
  Widget build(BuildContext context) {
    return TextButton(onPressed: (){},
        child: Text(icerik,style: TextStyle(color:Colors.white),),
      style: TextButton.styleFrom(backgroundColor: Colors.red),
    );
  }
}

