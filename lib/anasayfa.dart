import 'package:flutter/material.dart';
import 'package:qrfooder/colors.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({super.key});

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu, color: anaRenk),
          onPressed: () {
            // Menü butonuna tıklandığında yapılacak işlemler
          },
        ),
        title: Text(
          "QrFooder",
          style: TextStyle(
            color: anaRenk,
            fontFamily: "LogoFont",
            fontSize: 29,
          ),
        ),
        backgroundColor: anaRenk1,
        centerTitle: true,
      ),
      body: const Center(),
    );
  }
}
