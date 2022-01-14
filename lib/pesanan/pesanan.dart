// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:java_code/beranda/halaman1.dart';
import 'package:java_code/beranda/halaman2.dart';

class Pesanan extends StatefulWidget {
  const Pesanan({Key? key}) : super(key: key);

  @override
  _PesananState createState() => _PesananState();
}

var currentScreen = 0;

class _PesananState extends State<Pesanan> {
  final screenPesanan = [Halaman2(), Halaman1()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          actions: [
            // ElevatedButton(onPressed: null, child: Text('Halaman 1')),
            // ElevatedButton(onPressed: null, child: Text('Halaman 2'))
            // const WidgetTopNavigator(),
            WidgetTopNavBar(context)
          ],
        ),
        extendBody: true,
        // key: scaffoldKey,
        backgroundColor: const Color.fromARGB(255, 229, 229, 229),
        // backgroundColor: Colors.transparent,
        body: screenPesanan[currentScreen]
        // body: WidgetPagePesanan(),
        );
  }

  Widget WidgetTopNavBar(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        Material(
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
              padding: const EdgeInsetsDirectional.fromSTEB(20, 20, 20, 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                mainAxisSize: MainAxisSize.max,
                children: [
                  SedangBerjalan(),
                  Riwayat(),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget Riwayat() {
    if (currentScreen == 1) {
      return GestureDetector(
        onTap: () {
          setState(() {
            currentScreen = 1;
            print('currentScreen $currentScreen');
          });
        },
        child: Container(
          height: 200,
          // color: Colors.black,
          child: Text(
            'Riwayat',
            style: GoogleFonts.montserrat(
              shadows: [
                const Shadow(
                    color: Color.fromARGB(255, 0, 154, 173),
                    offset: Offset(0, -10))
              ],
              decoration: TextDecoration.underline,
              decorationColor: const Color.fromARGB(255, 0, 154, 173),
              decorationThickness: 3,
              // decorationStyle: ,
              //color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w700,
              foreground: Paint()
                // ..style = PaintingStyle.stroke
                // ..strokeWidth = 2
                ..color = Colors.transparent,
              // //fontFamily: 'Montserrat',
            ),
          ),
        ),
      );
    } else {
      return GestureDetector(
        onTap: () {
          setState(() {
            currentScreen = 1;
            print('currentScreen $currentScreen');
          });
        },
        child: Container(
          height: 200,
          // color: Colors.black,
          child: Text(
            'Riwayat',
            style: GoogleFonts.montserrat(
              shadows: [
                const Shadow(
                    // color: Color.fromARGB(255, 0, 154, 173),
                    offset: Offset(0, -10))
              ],
              decoration: TextDecoration.underline,
              decorationColor: Colors.black,
              decorationThickness: 3,
              // decorationStyle: ,
              //color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w700,
              foreground: Paint()
                // ..style = PaintingStyle.stroke
                // ..strokeWidth = 2
                ..color = Colors.transparent,
              // //fontFamily: 'Montserrat',
            ),
          ),
        ),
      );
    }
  }

  Widget SedangBerjalan() {
    if (currentScreen == 0) {
      return GestureDetector(
        onTap: () {
          setState(() {
            currentScreen = 0;
            print('currentScreen $currentScreen');
          });
        },
        child: Container(
          height: 200,
          // color: Colors.black,
          child: Text(
            'Sedang Berjalan',
            style: GoogleFonts.montserrat(
              shadows: [
                const Shadow(
                    color: Color.fromARGB(255, 0, 154, 173),
                    offset: Offset(0, -10))
              ],
              decoration: TextDecoration.underline,
              decorationColor: const Color.fromARGB(255, 0, 154, 173),
              decorationThickness: 3,
              // decorationStyle: ,
              //color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w700,
              foreground: Paint()
                // ..style = PaintingStyle.stroke
                // ..strokeWidth = 2
                ..color = Colors.transparent,
              // //fontFamily: 'Montserrat',
            ),
          ),
        ),
      );
    } else {
      return GestureDetector(
        onTap: () {
          setState(() {
            currentScreen = 0;
            print('currentScreen $currentScreen');
          });
        },
        child: Container(
          height: 200,
          // color: Colors.black,
          child: Text(
            'Sedang Berjalan',
            style: GoogleFonts.montserrat(
              shadows: [
                const Shadow(
                    // color: Color.fromARGB(255, 0, 154, 173),
                    offset: Offset(0, -10))
              ],
              decoration: TextDecoration.underline,
              decorationColor: Colors.black,
              decorationThickness: 3,
              // decorationStyle: ,
              //color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w700,
              foreground: Paint()
                // ..style = PaintingStyle.stroke
                // ..strokeWidth = 2
                ..color = Colors.transparent,
              // //fontFamily: 'Montserrat',
            ),
          ),
        ),
      );
    }
  }
}
