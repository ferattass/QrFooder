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
            fontSize: 40,
          ),
        ),
        backgroundColor: anaRenk1,
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(
              Icons.person,
              color: buttonrenk2,
            ),
            iconSize: 30.0,
            onPressed: () {
              // Kullanıcı butonuna tıklandığında yapılacak işlemler
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 30.0, left: 30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Hi Alper",
              style: TextStyle(
                color: anayazirenk,
                fontFamily: "AnaFont2",
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "Looking for something to eat?",
              style: TextStyle(
                color: anayazirenk,
                fontFamily: "AltFont",
                fontSize: 17,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 80.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Choose Category",
                    style: TextStyle(
                      color: anayazirenk,
                      fontFamily: "AnaFont2",
                      fontSize: 22.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(right: 25.0), // 10 px sola al
                    child: InkWell(
                      onTap: () {
                        // "See All" yazısına tıklandığında yapılacak işlemler
                      },
                      child: Text(
                        "See All",
                        style: TextStyle(
                          color:
                              yazirenk, // İstediğiniz rengi ayarlayabilirsiniz
                          fontFamily: "AltFont",
                          fontSize: 17.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
