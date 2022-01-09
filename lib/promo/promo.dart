import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
            children: [
              const WidgetNavigatorBack(),
              const WidgetImagePromo(),
              Container(
                height: MediaQuery.of(context).size.height,
                color: Colors.transparent,
                child: Container(
                    // margin: const EdgeInsets.symmetric(
                    //     vertical: 25, horizontal: 25),
                    decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 255, 255, 255),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30.0),
                          topRight: Radius.circular(30.0),
                        )),
                    child: const Center(
                      child: Text("Hi modal sheet"),
                    )),
              ),
            ],
          ),
        ),
      ),
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
