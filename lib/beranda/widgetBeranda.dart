// ignore_for_file: file_names, avoid_print

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:java_code/detail_menu/detail_menu.dart';
import 'package:java_code/promo/promo.dart';

class WidgetBeranda extends StatelessWidget {
  const WidgetBeranda({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
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
            //inline
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(20, 0, 1, 0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0, 10, 13, 0),
                      child: Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(12, 5, 0, 0),
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                fixedSize: const Size(189, 35),
                                primary: const Color.fromARGB(255, 46, 46, 46),
                                shadowColor:
                                    const Color.fromARGB(255, 46, 46, 46),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20.0))),
                            onPressed: () {
                              print('semuaMenu');
                            },
                            child: Row(
                              children: [
                                const SizedBox(
                                  width: 10,
                                ),
                                Image.asset(
                                  'assets/Beranda/semua_menu_icon.png',
                                  width: 20,
                                  height: 20,
                                  fit: BoxFit.cover,
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  'Semua Menu',
                                  style: GoogleFonts.montserrat(
                                    color: Colors.white,
                                    // fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            )),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0, 10, 13, 0),
                      child: Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(12, 5, 0, 0),
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                fixedSize: const Size(146, 35),
                                primary: const Color.fromARGB(255, 0, 154, 173),
                                shadowColor:
                                    const Color.fromARGB(255, 46, 46, 46),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20.0))),
                            onPressed: () {
                              print('makanan');
                            },
                            child: Row(
                              children: [
                                const SizedBox(
                                  width: 8,
                                ),
                                Image.asset(
                                  'assets/Beranda/makanan_icon.png',
                                  width: 20,
                                  height: 20,
                                  fit: BoxFit.cover,
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  'Makanan',
                                  style: GoogleFonts.montserrat(
                                    color: Colors.white,
                                    // fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            )),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0, 10, 13, 0),
                      child: Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(12, 5, 0, 0),
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                fixedSize: const Size(146, 35),
                                primary: const Color.fromARGB(255, 0, 154, 173),
                                shadowColor:
                                    const Color.fromARGB(255, 46, 46, 46),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20.0))),
                            onPressed: () {},
                            child: Row(
                              children: [
                                const SizedBox(
                                  width: 8,
                                ),
                                Image.asset(
                                  'assets/Beranda/minuman_icon.png',
                                  width: 20,
                                  height: 20,
                                  fit: BoxFit.cover,
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  'Minuman',
                                  style: GoogleFonts.montserrat(
                                    color: Colors.white,
                                    // fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            )),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            // const WidgetListMakanan(),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(25, 22, 0, 17),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      const Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 5, 0),
                        child: Icon(
                          Icons.fastfood_sharp,
                          color: Color(0xFF009AAD),
                          size: 24,
                        ),
                      ),
                      Text(
                        'Makanan',
                        textAlign: TextAlign.start,
                        style: GoogleFonts.montserrat(
                          // //fontFamily: 'Poppins',
                          color: const Color(0xFF009AAD),
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const DetailMenu(),
                      ),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(25, 0, 25, 0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding:
                              const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 17),
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
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      7, 7, 7, 7),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image.asset(
                                      'assets/Beranda/chicken_katsu.png',
                                      width: 75,
                                      height: 75,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  flex: 2,
                                  child: Padding(
                                    padding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            10, 0, 0, 0),
                                    child: Column(
                                      // mainAxisSize: MainAxisSize.max,
                                      // mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Chicken Katsu',
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
                                                    color:
                                                        const Color(0xFFAAAAAA),
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
                                      Flexible(
                                        flex: 1,
                                        child: IconButton(
                                            onPressed: () {},
                                            icon: const Icon(Icons.remove)),
                                      ),
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
                                        color: const Color.fromARGB(
                                            255, 0, 154, 173),
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
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(25, 22, 0, 17),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      const Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 5, 0),
                        child: Icon(
                          Icons.fastfood_sharp,
                          color: Color(0xFF009AAD),
                          size: 24,
                        ),
                      ),
                      Text(
                        'Minuman',
                        textAlign: TextAlign.start,
                        style: GoogleFonts.montserrat(
                          //fontFamily: 'Poppins',
                          color: const Color(0xFF009AAD),
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(25, 0, 25, 0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 17),
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
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    7, 7, 7, 7),
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
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      10, 0, 0, 0),
                                  child: Column(
                                    // mainAxisSize: MainAxisSize.max,
                                    // mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                                                  color:
                                                      const Color(0xFFAAAAAA),
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
                                        onPressed: () {},
                                        icon: const Icon(Icons.remove)),
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
                                      color: const Color.fromARGB(
                                          255, 0, 154, 173),
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
                ),
              ],
            ),
          ],
        ),
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