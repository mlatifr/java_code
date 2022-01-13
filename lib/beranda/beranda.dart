import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:java_code/detail_katalog/detail_katalog.dart';
import 'package:java_code/promo/promo.dart';
import 'widgetBeranda.dart';

int selectedIndexBottomNavBar = 0;

class Beranda extends StatefulWidget {
  const Beranda({Key? key}) : super(key: key);

  @override
  _BerandaState createState() => _BerandaState();
}

class _BerandaState extends State<Beranda> {
  final screens = [const WidgetBeranda(), const Promo(), const DetailKatalog()];

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
        ),
      ),
      body: screens[selectedIndexBottomNavBar],
      // body: const WidgetBeranda(),
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
              child: TextFormField(
                // controller: searchFieldController,
                obscureText: false,
                decoration: InputDecoration(
                  labelText: 'Pencarian',
                  labelStyle: GoogleFonts.montserrat(
                    // //fontFamily: 'Montserrat',
                    color: const Color(0xFFAAAAAA),
                    fontSize: 18,
                    fontWeight: FontWeight.normal,
                  ),
                  // hintText: 'Search by name, location etc...',
                  hintStyle: GoogleFonts.montserrat(
                    // //fontFamily: 'Montserrat',
                    color: const Color(0xFFAAAAAA),
                    fontSize: 18,
                    fontWeight: FontWeight.normal,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Color(0xFF009AAD),
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Color(0xFF009AAD),
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  prefixIcon: const Icon(
                    Icons.search_rounded,
                    color: Color(0xFF009AAD),
                    size: 26,
                  ),
                ),
                style: GoogleFonts.montserrat(
                  // //fontFamily: 'Montserrat',
                  color: const Color(0xFFAAAAAA),
                  fontSize: 18,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
