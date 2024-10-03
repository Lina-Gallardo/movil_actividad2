import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Frame(),
    );
  }
}

class Frame extends StatelessWidget {
  const Frame({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 550,
              padding: const EdgeInsets.only(top: 65),
              color: const Color.fromARGB(255, 100, 203, 91),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Texto("¿Tienes hambre?", 45),
                    const Align(
                        alignment: Alignment.bottomLeft,
                        child: Icon(
                          Icons.person_pin_outlined,
                          color: Colors.white,
                          size: 70,
                        )),
                  ]),
            ),
          ),
          Center(
            child: Image.asset(
              "assets/images/fondo.png",
              height: 375,
            ),
          ),
          Positioned(
              top: 520,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                decoration: const BoxDecoration(color: Colors.white),
              )),
          Positioned(
            top: 400,
            left: 10,
            child: Container(
              padding: const EdgeInsets.all(15),
              height: 225,
              width: MediaQuery.of(context).size.width - 20,
              child: ListView(scrollDirection: Axis.horizontal, children: [
                Cajas("Ensaladas", 20, "30 Post", 15,
                    "assets/images/ensalada.png"),
                Cajas("FastFood", 20, "24 Post", 15,
                    "assets/images/fastfood.png"),
                Cajas("HotDog", 20, "10 Post", 15, "assets/images/hotdog.png"),
                Cajas(
                    "Hamburger", 20, "30 Post", 15, "assets/images/burger.png"),
                Cajas("Pizza", 20, "30 Post", 15, "assets/images/pizza.png"),
                Cajas("Sushi", 20, "20 Post", 15, "assets/images/fondo.jpg"),
                Cajas("Juices", 20, "30 Post", 15, "assets/images/jugo.png"),
              ]),
            ),
          ),
        ],
      ),
    );
  }

// ignore: non_constant_identifier_names
  Widget Texto(String titulo, double tam) {
    return Text(
      titulo,
      style: TextStyle(
          color: Colors.black,
          fontSize: tam,
          fontFamily: 'Schyler',
          fontWeight: FontWeight.bold),
    );
  }

  // ignore: non_constant_identifier_names
  Widget Cajas(
      String titulo, double tam, String cont, double tam2, String img) {
    return Container(
      width: 130,
      height: 200,
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
        color: Colors.white,
      ),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Image.asset(img), Texto(titulo, tam)]),
    );
  }
}
