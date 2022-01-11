// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailKatalog extends StatefulWidget {
  const DetailKatalog({Key? key}) : super(key: key);

  @override
  _DetailKatalogState createState() => _DetailKatalogState();
}

class _DetailKatalogState extends State<DetailKatalog> {
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      // key: scaffoldKey,
      backgroundColor: const Color.fromARGB(255, 229, 229, 229),
      // backgroundColor: Colors.transparent,
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          // border: Border.all(color: Color(0xFFF38B6FF), width: 2),
          //other code
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
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
            currentIndex: _selectedIndex,
            onTap: _onItemTapped,
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              WidgetNavigatorBack(),
              WidgetImageDetailKatalog(),
              WidgetSyaratKetentuan(),
            ],
          ),
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
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    top: 20, bottom: 10, left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Chicken Katsu',
                      style: GoogleFonts.montserrat(
                        //color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        foreground: Paint()
                          // ..style = PaintingStyle.stroke
                          // ..strokeWidth = 2
                          ..color = const Color.fromARGB(255, 0, 154, 173),
                        // //fontFamily: 'Montserrat',
                      ),
                    ),
                    // SizedBox(
                    //   width: 141,
                    // ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        IconButton(
                            onPressed: () {}, icon: const Icon(Icons.remove)),
                        Text(
                          '1',
                          style: GoogleFonts.montserrat(
                            //fontFamily: 'Montserrat',
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.add_box),
                          color: const Color.fromARGB(255, 0, 154, 173),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 0, bottom: 10, left: 20, right: 100),
                child: Text(
                  'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                  maxLines: 3,
                  style: GoogleFonts.montserrat(
                    //color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    foreground: Paint()
                      // ..style = PaintingStyle.stroke
                      // ..strokeWidth = 2
                      ..color = const Color.fromARGB(255, 46, 46, 46),
                    // //fontFamily: 'Montserrat',
                  ),
                ),
              ),
              const Divider(),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const ImageIcon(
                          AssetImage("assets/DetailKatalog/harga.png"),
                          color: Color.fromARGB(255, 0, 154, 173),
                          size: 16,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Harga',
                          style: GoogleFonts.montserrat(
                            //color: Colors.white,
                            fontSize: 16,
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
                    Text(
                      'Rp 10.000',
                      style: GoogleFonts.montserrat(
                        //color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        foreground: Paint()
                          // ..style = PaintingStyle.stroke
                          // ..strokeWidth = 2
                          ..color = const Color.fromARGB(255, 0, 154, 173),
                        // //fontFamily: 'Montserrat',
                      ),
                    ),
                  ],
                ),
              ),
              const Divider(),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const ImageIcon(
                          AssetImage("assets/DetailKatalog/level.png"),
                          color: Color.fromARGB(255, 0, 154, 173),
                          size: 16,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Level',
                          style: GoogleFonts.montserrat(
                            //color: Colors.white,
                            fontSize: 16,
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
                    Row(
                      children: [
                        Text(
                          '1',
                          style: GoogleFonts.montserrat(
                            //color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            foreground: Paint()
                              // ..style = PaintingStyle.stroke
                              // ..strokeWidth = 2
                              ..color = const Color.fromARGB(255, 46, 46, 46),
                            // //fontFamily: 'Montserrat',
                          ),
                        ),
                        IconButton(
                            onPressed: () {
                              showModalBottomSheet(
                                  shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.vertical(
                                        top: Radius.circular(25.0)),
                                  ),
                                  context: context,
                                  builder: (context) {
                                    return Container(
                                      margin: const EdgeInsets.symmetric(
                                          vertical: 0, horizontal: 0),
                                      height:
                                          MediaQuery.of(context).size.height *
                                              1 /
                                              5,
                                    );
                                  });
                            },
                            icon: const Icon(Icons.chevron_right)),
                      ],
                    )
                  ],
                ),
              ),
              const Divider(),
              Padding(
                padding: const EdgeInsets.only(
                  left: 20,
                  right: 20,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const ImageIcon(
                          AssetImage("assets/DetailKatalog/toping.png"),
                          color: Color.fromARGB(255, 0, 154, 173),
                          size: 16,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Toping',
                          style: GoogleFonts.montserrat(
                            //color: Colors.white,
                            fontSize: 16,
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
                    Row(
                      children: [
                        Text(
                          '1',
                          style: GoogleFonts.montserrat(
                            //color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            foreground: Paint()
                              // ..style = PaintingStyle.stroke
                              // ..strokeWidth = 2
                              ..color = const Color.fromARGB(255, 46, 46, 46),
                            // //fontFamily: 'Montserrat',
                          ),
                        ),
                        IconButton(
                            onPressed: () {
                              showModalBottomSheet(
                                  shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.vertical(
                                        top: Radius.circular(25.0)),
                                  ),
                                  context: context,
                                  builder: (context) {
                                    return Container(
                                      margin: const EdgeInsets.symmetric(
                                          vertical: 0, horizontal: 0),
                                      height:
                                          MediaQuery.of(context).size.height *
                                              1 /
                                              5,
                                    );
                                  });
                            },
                            icon: const Icon(Icons.chevron_right)),
                      ],
                    )
                  ],
                ),
              ),
              const Divider(),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const ImageIcon(
                          AssetImage("assets/DetailKatalog/catatan.png"),
                          color: Color.fromARGB(255, 0, 154, 173),
                          size: 16,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Catatan',
                          style: GoogleFonts.montserrat(
                            //color: Colors.white,
                            fontSize: 16,
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
                    Row(
                      children: [
                        Text(
                          '1',
                          style: GoogleFonts.montserrat(
                            //color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            foreground: Paint()
                              // ..style = PaintingStyle.stroke
                              // ..strokeWidth = 2
                              ..color = const Color.fromARGB(255, 46, 46, 46),
                            // //fontFamily: 'Montserrat',
                          ),
                        ),
                        IconButton(
                            onPressed: () {
                              showModalBottomSheet(
                                  shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.vertical(
                                        top: Radius.circular(25.0)),
                                  ),
                                  context: context,
                                  builder: (context) {
                                    return Container(
                                      margin: const EdgeInsets.symmetric(
                                          vertical: 0, horizontal: 0),
                                      height:
                                          MediaQuery.of(context).size.height *
                                              1 /
                                              5,
                                    );
                                  });
                            },
                            icon: const Icon(Icons.chevron_right)),
                      ],
                    )
                  ],
                ),
              ),
              const Divider(),
            ],
          )),
    );
  }
}

class WidgetImageDetailKatalog extends StatelessWidget {
  const WidgetImageDetailKatalog({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.symmetric(vertical: 25, horizontal: 97),
        // height: 180,
        child: Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 20, 0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.asset(
              'assets/DetailKatalog/chicken_katsu.png',
              // width: 378,
              // height: 150,
              fit: BoxFit.cover,
            ),
          ),
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
                    width: 50,
                  ),
                  // Image.asset(
                  //   'assets/Beranda/DetailKatalog_yg_tersedia.png',
                  //   width: 23,
                  //   height: 16,
                  //   fit: BoxFit.cover,
                  // ),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(9, 0, 0, 0),
                    child: Text(
                      'Detail Menu',
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
