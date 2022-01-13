import 'package:flutter/material.dart';


class Halaman1 extends StatefulWidget {
  const Halaman1({Key? key}) : super(key: key);

  @override
  _Halaman1State createState() => _Halaman1State();
}

class _Halaman1State extends State<Halaman1> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
    );
    // return screens[selectedIndexBottomNavBar];
    // return Scaffold(
    //   // key: scaffoldKey,
    //   // backgroundColor: Colors,
    //   // bottomNavigationBar: ClipRRect(
    //   //   borderRadius: const BorderRadius.only(
    //   //     topRight: Radius.circular(30),
    //   //     topLeft: Radius.circular(30),
    //   //   ),
    //   //   child: BottomNavigationBar(
    //   //     backgroundColor: const Color.fromARGB(255, 46, 46, 46),
    //   //     unselectedItemColor: const Color.fromARGB(255, 194, 194, 194),
    //   //     selectedItemColor: const Color.fromARGB(255, 255, 255, 255),
    //   //     items: const <BottomNavigationBarItem>[
    //   //       BottomNavigationBarItem(
    //   //         icon: Icon(Icons.home),
    //   //         label: 'Beranda',
    //   //       ),
    //   //       BottomNavigationBarItem(
    //   //         icon: ImageIcon(AssetImage('assets/Beranda/pesanan_icon.png')),
    //   //         label: 'Pesanan',
    //   //       ),
    //   //       BottomNavigationBarItem(
    //   //         icon: ImageIcon(AssetImage('assets/Beranda/profil_icon.png')),
    //   //         label: 'Profil',
    //   //       ),
    //   //     ],
    //   //     // currentIndex: value.,
    //   //     onTap: (value) => setState(() {
    //   //       selectedIndexBottomNavBar = value;
    //   //     }),
    //   //   ),
    //   // ),
    //   // body: screens[selectedIndexBottomNavBar],
    //   // body: const WidgetBeranda(),
    // );
  }
}
