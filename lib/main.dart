import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  var listData = [
    "Apples",
    "Bananas",
    "Bread",
    "Milk",
    "Eggs",
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('My Shopping List'),
          centerTitle: true,
        actions: [
          Icon(Icons.shopping_cart)
        ],

      ),
      body: ListView.builder(
        itemCount: 5,
          itemBuilder: (context,index)=>ListTile(
            title: Text(listData[index]),
            leading: Icon(Icons.shopping_basket),

          ),
      ),


    );
  }
}
