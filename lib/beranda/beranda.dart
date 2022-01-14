import 'package:flutter/material.dart';
import 'package:java_code/beranda/halaman2.dart';
import 'package:java_code/pesanan/pesanan.dart';
import 'widgetBeranda.dart';

int selectedIndexBottomNavBar = 0;

class Beranda extends StatefulWidget {
  const Beranda({Key? key}) : super(key: key);

  @override
  _BerandaState createState() => _BerandaState();
}

class _BerandaState extends State<Beranda> {
  final screens = [
    const WidgetBeranda(), const Pesanan(), const Halaman2(),
    // const Pesanan(),
    // const WidgetPagePesanan()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // key: scaffoldKey,
      // backgroundColor: Colors,
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.only(
          topRight: Radius.circular(30),
          topLeft: Radius.circular(30),
        ),
        child: BottomNavigationBar(
          backgroundColor: const Color.fromARGB(255, 46, 46, 46),
          unselectedItemColor: const Color.fromARGB(255, 194, 194, 194),
          selectedItemColor: const Color.fromARGB(255, 255, 255, 255),
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Beranda',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage('assets/Beranda/pesanan_icon.png')),
              label: 'Pesanan',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage('assets/Beranda/profil_icon.png')),
              label: 'Profil',
            ),
          ],
          // currentIndex: value.,
          onTap: (value) => setState(() {
            selectedIndexBottomNavBar = value;
          }),
          currentIndex: selectedIndexBottomNavBar,
        ),
      ),

      body: screens[selectedIndexBottomNavBar],
      // body: const WidgetBeranda(),
    );
  }
}
