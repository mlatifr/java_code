import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:java_code/beranda/beranda.dart';

class Promo extends StatefulWidget {
  const Promo({Key? key}) : super(key: key);

  @override
  _PromoState createState() => _PromoState();
}

class _PromoState extends State<Promo> {
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // key: scaffoldKey,
      // backgroundColor: Colors,
      bottomNavigationBar: BottomNavigationBar(
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
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const WidgetPencarian(),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(25, 12, 20, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Image.asset(
                      'assets/Beranda/promo_yg_tersedia.png',
                      width: 23,
                      height: 16,
                      fit: BoxFit.cover,
                    ),
                    Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(9, 0, 0, 0),
                      child: Text(
                        'Promo yang Tersedia',
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
              const WidgetListPromoYgTersedia(),
              const WidgetListItemMinuman(),
            ],
          ),
        ),
      ),
    );
  }
}

class WidgetListItemMinuman extends StatelessWidget {
  const WidgetListItemMinuman({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(25, 0, 25, 0),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 17),
            child: Container(
              width: 378,
              height: 89,
              decoration: BoxDecoration(
                color: const Color(0xFFF6F6F6),
                boxShadow: const [
                  BoxShadow(
                    blurRadius: 8,
                    color: Color(0x592E2E2E),
                    offset: Offset(0, 2),
                    spreadRadius: 1,
                  )
                ],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(7, 7, 7, 7),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        'assets/Beranda/es_sogem.png',
                        width: 75,
                        height: 75,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                      child: Column(
                        // mainAxisSize: MainAxisSize.max,
                        // mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Es Sogem',
                            style: GoogleFonts.montserrat(
                              //fontFamily: 'Montserrat',
                              color: const Color(0xFF111417),
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            'Rp 10.000',
                            style: GoogleFonts.montserrat(
                              //fontFamily: 'Montserrat',
                              color: const Color(0xFF009AAD),
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 38,
                            child: TextButton.icon(
                                onPressed: () {},
                                icon: Image.asset(
                                    'assets/Beranda/tambahkan_catatan_icon.png'),
                                label: Text(
                                  'Tambahkan Catatan',
                                  style: GoogleFonts.montserrat(
                                      color: const Color(0xFFAAAAAA),
                                      fontWeight: FontWeight.w500,
                                      fontSize: 10),
                                )),
                          )
                        ],
                      ),
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    child: Row(
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
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class WidgetListPromoYgTersedia extends StatelessWidget {
  const WidgetListPromoYgTersedia({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 25, horizontal: 25),
      height: 158,
      child: ListView.builder(
          // physics: NeverScrollableScrollPhysics(),
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemCount: 5,
          itemBuilder: (context, index) {
            return Stack(
              children: [
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 20, 0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset(
                      'assets/Beranda/diskon10%_bg.png',
                      width: 282,
                      height: 158,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Promo(),
                      ),
                    );
                  },
                  child: Container(
                    width: 282,
                    height: 158,
                    decoration: BoxDecoration(
                      color: const Color(0xD3009AAD),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0, 50, 0, 0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    57, 0, 0, 0),
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
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    5, 0, 0, 0),
                                child: Text(
                                  '10 %',
                                  textAlign: TextAlign.start,
                                  style: GoogleFonts.montserrat(
                                    // //fontFamily: 'Montserrat',
                                    color: Colors.white,
                                    fontSize: 35,
                                    fontWeight: FontWeight.w800,
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
                ),
              ],
            );
          }),
    );
  }
}

class WidgetPencarian extends StatelessWidget {
  const WidgetPencarian({
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
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Beranda(),
                          ),
                        );
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
