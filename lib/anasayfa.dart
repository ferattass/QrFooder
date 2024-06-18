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
        title: Text(
          "QrFooder",
          style:
              TextStyle(color: anaRenk, fontFamily: "LogoFont", fontSize: 29),
        ),
        backgroundColor:
            anaRenk1, // anaRenk1'in colors.dart'ta tanımlandığından emin olun
        centerTitle: true,
      ),
      body: const Center(),
    );
  }
}
