import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(20),
                  //color: Colors.red,
                  decoration: BoxDecoration(border: Border.all()),
                  child: Image.asset('images/pic1.jpg')),
              Image.asset('images/pic2.jpg'),
              Image.asset('images/pic3.jpg'),
              //Image.network(
              //  'https://raw.githubusercontent.com/flutter/website/blob/main/examples/layout/row_column/images/pic3.jpg'),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(width: 10),
              Expanded(
                  flex: 1,
                  child: Image.asset(
                      'images_medium/pic1.jpg')), //Expanded mengatur resolusi image objek di dalamnya secara otomatis berdasarkan runag piksel yang terisa
              SizedBox(width: 10),
              Expanded(flex: 1, child: Image.asset('images_medium/pic2.jpg')),
              SizedBox(width: 10),
              Expanded(flex: 1, child: Image.asset('images_medium/pic3.jpg')),
              SizedBox(width: 10),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                width: 150,
                child: Image.asset('images_medium/pic1.jpg'),
              ), //sizedbox untuk gambar statik termasuk kategori single child
              SizedBox(
                  width: 150, child: Image.asset('images_medium/pic2.jpg')),
              SizedBox(
                  width: 150, child: Image.asset('images_medium/pic3.jpg')),
            ],
          )
        ],
      ),
    );
  }
}

/*

    */