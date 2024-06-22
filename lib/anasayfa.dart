  import 'package:flutter/material.dart';
  import 'package:qrfooder/colors.dart';

  class Anasayfa extends StatefulWidget {
    const Anasayfa({super.key});

    @override
    State<Anasayfa> createState() => _AnasayfaState();
  }

  class _AnasayfaState extends State<Anasayfa> {
    int? _selectedIndex; // Seçili kartın indeksini tutar

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
                padding: const EdgeInsets.only(top: 30.0),
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
                      padding: const EdgeInsets.only(right: 25.0), // 10 px sola al
                      child: InkWell(
                        onTap: () {
                          // "See All" yazısına tıklandığında yapılacak işlemler
                        },
                        child: Text(
                          "See All",
                          style: TextStyle(
                            color: yazirenk, // İstediğiniz rengi ayarlayabilirsiniz
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
              SizedBox(height: 10.0), // "Choose Category" ve butonlar arasına boşluk ekler
              Expanded(
                child: Align(
                  alignment: Alignment.center,
                  child: Transform.translate(
                    offset: Offset(-14, -60), // 10 px sola ve 20 px üste kaydır
                    child: Container(
                      width: 400, // GridView genişliğini belirleyin
                      child: GridView.count(
                        crossAxisCount: 2, // 2 sütunlu grid
                        crossAxisSpacing: 20.0, // Sütunlar arasındaki boşluk
                        mainAxisSpacing: 20.0, // Satırlar arasındaki boşluk
                        padding: const EdgeInsets.all(20.0),
                        shrinkWrap: true,
                        children: List.generate(4, (index) {
                          return buildCategoryCard(
                            'assets/${['fish.png', 'pizza.png', 'vegan.png', 'chinese.png'][index]}',
                            ['Sea Foods', 'Pizza', 'Vegan', 'Chinese Food'][index],
                            index,
                          );
                        }),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }

    Widget buildCategoryCard(String assetPath, String title, int index) {
      final isSelected = _selectedIndex == index;
      return InkWell(
        onTap: () {
          setState(() {
            _selectedIndex = isSelected ? null : index;
          });
        },
        child: Container(
          width: 181,
          height: 132,
          decoration: BoxDecoration(
            color: isSelected ? Colors.green : Colors.grey[200], // Tıklanınca yeşil olur
            borderRadius: BorderRadius.circular(10), // Dikdörtgenin köşe yuvarlaklığı
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                assetPath,
                width: 60.0, // İkonun genişliği
                height: 60.0, // İkonun yüksekliği
                color: isSelected ? Colors.white : null, // Tıklanınca ikon beyaz olur
              ),
              SizedBox(height: 5.0),
              Text(
                title,
                style: TextStyle(
                  color: isSelected ? Colors.white : anayazirenk, // Tıklanınca yazı beyaz olur
                  fontFamily: "AltFont",
                  fontSize: 17.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      );
    }
  }
