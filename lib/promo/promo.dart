// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:java_code/beranda/BottomNavBarProvider.dart';
import 'package:java_code/beranda/beranda.dart';
import 'package:java_code/beranda/halaman1.dart';
import 'package:java_code/beranda/halaman2.dart';
import 'package:java_code/pesanan/pesanan.dart';
import 'package:provider/provider.dart';

class Promo extends StatefulWidget {
  const Promo({Key? key}) : super(key: key);

  @override
  _PromoState createState() => _PromoState();
}

class _PromoState extends State<Promo> {
  final screens = [const WidgetPagePromo(), const Pesanan(), const Halaman2()];

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => BottomNavBarProvider(),
      child: Scaffold(
        bottomNavigationBar: ClipRRect(
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(30),
            topLeft: Radius.circular(30),
          ),
          child: BottomNavigationBar(
            currentIndex: selectedIndexBottomNavBar,
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
              if (value == 0) {
                Navigator.pop(context);
                selectedIndexBottomNavBar = 0;
              }
              if (value == 1) {
                selectedIndexBottomNavBar = value;
              }
              if (value == 2) {
                selectedIndexBottomNavBar = value;
              }
            }),
          ),
        ),
        extendBody: true,
        // key: scaffoldKey,
        backgroundColor: const Color.fromARGB(255, 229, 229, 229),
        // backgroundColor: Colors.transparent,
        body: screens[selectedIndexBottomNavBar],
        // body: WidgetPagePromo(),
      ),
    );
  }
}

class WidgetPagePromo extends StatelessWidget {
  const WidgetPagePromo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            WidgetNavigatorBack(),
            WidgetImagePromo(),
            WidgetSyaratKetentuan(),
          ],
        ),
      ),
    );
  }
}

class WidgetSyaratKetentuan extends StatelessWidget {
  const WidgetSyaratKetentuan({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height -
          (MediaQuery.of(context).size.height * 1 / 2.15),
      color: Colors.transparent,
      child: Container(
          margin: const EdgeInsets.symmetric(vertical: 0, horizontal: 0),
          decoration: const BoxDecoration(
              color: Color.fromARGB(255, 255, 255, 255),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30.0),
                topRight: Radius.circular(30.0),
              )),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 20,
                  bottom: 10,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      'Nama Promo',
                      style: GoogleFonts.montserrat(
                        //color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        foreground: Paint()
                          // ..style = PaintingStyle.stroke
                          // ..strokeWidth = 2
                          ..color = const Color.fromARGB(255, 46, 46, 46),
                        // //fontFamily: 'Montserrat',
                      ),
                    ),
                    Text(
                      'Diskon 10%',
                      style: GoogleFonts.montserrat(
                        //color: Colors.white,
                        fontSize: 21,
                        fontWeight: FontWeight.w700,
                        foreground: Paint()
                          // ..style = PaintingStyle.stroke
                          // ..strokeWidth = 2
                          ..color = const Color.fromARGB(255, 0, 154, 173),
                        // //fontFamily: 'Montserrat',
                      ),
                    )
                  ],
                ),
              ),
              const Divider(),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Row(
                  children: [
                    const ImageIcon(
                      AssetImage('assets/Promo/SyaratKetentuan.png'),
                      color: Color.fromARGB(255, 0, 154, 173),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Syarat dan Ketentuan',
                      style: GoogleFonts.montserrat(
                        //color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        foreground: Paint()
                          // ..style = PaintingStyle.stroke
                          // ..strokeWidth = 2
                          ..color = const Color.fromARGB(255, 46, 46, 46),
                        // //fontFamily: 'Montserrat',
                      ),
                    ),
                  ],
                ),
              ),
              Flexible(
                flex: 1,
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 15,
                        left: 65,
                        right: 30,
                      ),
                      child: Text(
                        // ignore: prefer_adjacent_string_concatenation
                        'Lorem ipsum dolor sit amet, consectetur ' +
                            ' adipisicing elit,' +
                            ' sed do eiusmod tempor incididunt ut labore et dolore' +
                            '  magna aliqua. Ut enim ad minim veniam, quis nostrud ' +
                            ' exercitation ullamco laboris nisi ut aliquip ex ea ' +
                            ' vommodo consequat.\n\n' +
                            '   1. Lorem ipsum dolor sit amet, consectetur ' +
                            '      adipisicing elit,' +
                            ' sed do eiusmod tempor incididunt ut labore et dolore\n\n' +
                            '   2. Lorem ipsum dolor sit amet, consectetur ' +
                            '      adipisicing elit,' +
                            ' sed do eiusmod tempor incididunt ut labore et dolore\n\n' +
                            '   3. Lorem ipsum dolor sit amet, consectetur ' +
                            '      adipisicing elit,' +
                            ' sed do eiusmod tempor incididunt ut labore et dolore\n\n' +
                            'Lorem ipsum dolor sit amet, consectetur ' +
                            ' adipisicing elit,' +
                            ' sed do eiusmod tempor incididunt ut labore et dolore' +
                            '  magna aliqua. Ut enim ad minim veniam, quis nostrud ' +
                            ' exercitation ullamco laboris nisi ut aliquip ex ea ',
                        textAlign: TextAlign.justify,
                        style: GoogleFonts.montserrat(
                          // letterSpacing: 1.5,
                          // //fontFamily: 'Montserrat',
                          // color: Colors.white,
                          fontSize: 12,
                          // fontWeight: FontWeight.w800,
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          )),
    );
  }
}

class WidgetImagePromo extends StatelessWidget {
  const WidgetImagePromo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.symmetric(vertical: 25, horizontal: 25),
        // height: 180,
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 20, 0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset(
                  'assets/Beranda/diskon10%_bg.png',
                  width: 378,
                  height: 150,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              width: 378,
              height: 150,
              decoration: BoxDecoration(
                color: const Color(0xD3009AAD),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0, 50, 0, 0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding:
                              const EdgeInsetsDirectional.fromSTEB(75, 0, 0, 0),
                          child: Text(
                            'Diskon',
                            textAlign: TextAlign.start,
                            style: GoogleFonts.montserrat(
                              // //fontFamily: 'Montserrat',
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                          child: Text(
                            '10 %',
                            textAlign: TextAlign.start,
                            style: GoogleFonts.montserrat(
                              //color: Colors.white,
                              fontSize: 35,
                              fontWeight: FontWeight.w800,
                              foreground: Paint()
                                ..style = PaintingStyle.stroke
                                ..strokeWidth = 2
                                ..color = Colors.white,
                              // //fontFamily: 'Montserrat',
                            ),
                          ),
                        ),
                      ],
                    ),
                    Text(
                      'Lorem ipsum dolor sit amet',
                      style: GoogleFonts.montserrat(
                        // //fontFamily: 'Montserrat',
                        color: const Color(0xB4FFFFFF),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}

class WidgetNavigatorBack extends StatelessWidget {
  const WidgetNavigatorBack({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        Material(
          // color: Colors.transparent,
          elevation: 3,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(30),
              topLeft: Radius.circular(0),
              topRight: Radius.circular(0),
            ),
          ),
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: 60,
            decoration: const BoxDecoration(
              // color: FlutterFlowTheme.tertiaryColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
                topLeft: Radius.circular(0),
                topRight: Radius.circular(0),
              ),
            ),
            child: Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(20, 10, 20, 10),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //     builder: (context) => const Beranda(),
                        //   ),
                        // );
                      },
                      icon: const Icon(Icons.arrow_back_ios_rounded)),
                  const SizedBox(
                    width: 80,
                  ),
                  Image.asset(
                    'assets/Beranda/promo_yg_tersedia.png',
                    width: 23,
                    height: 16,
                    fit: BoxFit.cover,
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(9, 0, 0, 0),
                    child: Text(
                      'Promo',
                      style: GoogleFonts.montserrat(
                        // //fontFamily: 'Montserrat',
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
