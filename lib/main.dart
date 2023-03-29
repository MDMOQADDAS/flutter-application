import 'package:flutter/material.dart';

void main() => runApp(StoreApp());

class StoreApp extends StatelessWidget {
  const StoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    var myProducts = [
      "Cucumber",
      "Chilli",
      "Tomato",
      "Potato",
      "Grapes",
      "Gava",
      "Lemon",
      "Sauce"
    ];

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        drawer: Drawer(
            child: ListView(
          children: [
            ListTile(
              title: Text("Chilli"),
              trailing: Icon(Icons.store),
              tileColor: Colors.amber,
            ),
            ListTile(
              title: Text("Cucumber"),
              trailing: Icon(Icons.store),
              tileColor: Colors.blueAccent,
            ),
            ListTile(
              title: Text("Tomato"),
              trailing: Icon(Icons.store),
              tileColor: Colors.amber,
            ),
            ListTile(
              title: Text("Potato"),
              trailing: Icon(Icons.store),
              tileColor: Colors.blueAccent,
            ),
            ListTile(
              title: Text("Onian"),
              trailing: Icon(Icons.store),
              tileColor: Colors.amber,
            ),
          ],
        )),
        appBar: AppBar(
          title: const Text("Store App"),
        ),
        body: GridView.builder(
            itemCount: myProducts.length,
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200,
                childAspectRatio: 3 / 2,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20),
            itemBuilder: (BuildContext context, index) {
              return Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.circular(15)),
                child: Text(myProducts[index]),
              );
            }),
      ),
    );
  }
}
