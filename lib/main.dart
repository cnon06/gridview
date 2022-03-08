import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Main Page"),
      ),
      body: GridView.count(crossAxisCount: 2,
      childAspectRatio: 2/1,
      children: [

        GestureDetector(
          onTap: ()
          {
            print('Güneş tıklandı.');
              },
          child: Card(
           child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
             children: [
               Icon(Icons.wb_sunny),
                Text("Güneş"),
              ],
            ),
          ),
        ),

        GestureDetector(
          onTap: ()
          {
            print('Ay tıklandı');
              },
          child: Card(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.brightness_2),
                Text("Ay"),
              ],
            ),
          ),
        ),


        GestureDetector(
          onTap: ()
          {
            print('Yıldız tıklandı.');
              },
          child: Card(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.star),
                Text("Yıldız"),
              ],
            ),
          ),
        ),


      ],

      )

    );
  }
}
