// ignore_for_file: prefer_const_literals_to_create_immutables, non_constant_identifier_names, avoid_print

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Pesanan extends StatefulWidget {
  const Pesanan({Key? key}) : super(key: key);

  @override
  _PesananState createState() => _PesananState();
}

var currentScreen = 0;

class _PesananState extends State<Pesanan> {
  final screenPesanan = [
    const WidgetContainerSedangBerjalan(),
    const WidgetContainerRiwayat()
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          // extendBodyBehindAppBar: true,
          appBar: AppBar(
            automaticallyImplyLeading: false,
            backgroundColor: Colors.transparent,
            shadowColor: const Color.fromARGB(255, 229, 229, 229),
            elevation: 0,
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
          ),
    );
  }

  Widget WidgetTopNavBar(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        Container(
          margin: const EdgeInsets.only(bottom: 5.0),
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            color: Colors.white,
            boxShadow: [BoxShadow(blurRadius: 5.0)],
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(30),
              topLeft: Radius.circular(0),
              topRight: Radius.circular(0),
            ),
          ),
          child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(20, 20, 20, 0),
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
        child: SizedBox(
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
        child: SizedBox(
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
        child: SizedBox(
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
        child: SizedBox(
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

class WidgetContainerSedangBerjalan extends StatelessWidget {
  const WidgetContainerSedangBerjalan({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color: Colors.white,
          image: DecorationImage(
            image: AssetImage('assets/Pesanan/background_pesanan.png'),
            // fit: BoxFit.cover,
          )),
      child: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset('assets/Pesanan/img_center_pesanan.png'),
          const SizedBox(
            height: 50,
          ),
          const Text(
            'Sudah Pesan?\nLacak pesananmu\ndi sini.',
            textAlign: TextAlign.center,
          )
        ],
      )),
    );
  }
}

class WidgetContainerRiwayat extends StatefulWidget {
  const WidgetContainerRiwayat({
    Key? key,
  }) : super(key: key);

  @override
  State<WidgetContainerRiwayat> createState() => _WidgetContainerRiwayatState();
}

class _WidgetContainerRiwayatState extends State<WidgetContainerRiwayat> {
  String dropdownValue = 'One';
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color: Colors.white,
          image: DecorationImage(
            image: AssetImage('assets/Pesanan/background_pesanan.png'),
            // fit: BoxFit.cover,
          )),
      child: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          DropdownButton<String>(
            value: dropdownValue,
            icon: const Icon(Icons.arrow_downward),
            elevation: 16,
            style: const TextStyle(color: Colors.deepPurple),
            underline: Container(
              height: 2,
              color: Colors.deepPurpleAccent,
            ),
            onChanged: (String? newValue) {
              setState(() {
                dropdownValue = newValue!;
              });
            },
            items: <String>['One', 'Two', 'Free', 'Four']
                .map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),
          Image.asset('assets/Pesanan/img_center_pesanan.png'),
          const SizedBox(
            height: 50,
          ),
          const Text(
            'Sudah Pesan?\nLacak pesananmu\ndi sini.',
            textAlign: TextAlign.center,
          )
        ],
      )),
    );
  }
}
