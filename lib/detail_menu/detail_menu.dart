import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:java_code/beranda/makananProvider.dart';
import 'package:provider/provider.dart';

class DetailMenu extends StatefulWidget {
  var index;
  DetailMenu({Key? key, this.index}) : super(key: key);

  @override
  _DetailMenuState createState() => _DetailMenuState();
}

class _DetailMenuState extends State<DetailMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: Color.fromARGB(255, 229, 229, 229),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              WidgetTittle(context),
              WidgetImageDetailMakanan(),
              widgetDetailMakanan(context),
            ],
          ),
        ),
      ),
    );
  }

  Row WidgetTittle(BuildContext context) {
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
                      },
                      icon: const Icon(Icons.arrow_back_ios_rounded)),
                  const SizedBox(
                    width: 50,
                  ),
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

  Container WidgetImageDetailMakanan() {
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

  Container widgetDetailMakanan(BuildContext context) {
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
                        ChangeNotifierProvider(
                          create: (context) => MakananProvider(),
                          child: Builder(builder: (BuildContext newContext) {
                            return Text(
                              // '1',
                              '${newContext.read<MakananProvider>().listMakananProvider[widget.index].jumlah}',
                              style: GoogleFonts.montserrat(
                                //fontFamily: 'Montserrat',
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                            );
                          }),
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
                    SizedBox(
                      height: 30,
                      child: TextButton.icon(
                        onPressed: () {
                          ModalBottomLevel(context);
                        },
                        label: const Icon(
                          Icons.chevron_right,
                          color: Colors.black,
                        ),
                        icon: Text(
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
                      ),
                    ),
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
                    SizedBox(
                      height: 30,
                      child: TextButton.icon(
                        onPressed: () {
                          ModalBottomToping(context);
                        },
                        label: const Icon(
                          Icons.chevron_right,
                          color: Colors.black,
                        ),
                        icon: Text(
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
                    SizedBox(
                      height: 30,
                      child: TextButton.icon(
                        onPressed: () {
                          ModalBottomBuatCatatan(context);
                        },
                        label: const Icon(
                          Icons.chevron_right,
                          color: Colors.black,
                        ),
                        icon: Text(
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
                      ),
                    ),
                  ],
                ),
              ),
              const Divider(),
              SizedBox(
                height: 42,
                width: 350,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: const Color.fromARGB(255, 0, 154, 173),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30), // <-- Radius
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    'Tambahkan Ke Pesanan',
                    style: GoogleFonts.montserrat(
                        //color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        foreground: Paint()
                          // ..style = PaintingStyle.stroke
                          // ..strokeWidth = 2
                          ..color = Colors.white
                        // //fontFamily: 'Montserrat',
                        ),
                  ),
                ),
              )
            ],
          )),
    );
  }

  Future<dynamic> ModalBottomLevel(BuildContext context) {
    return showModalBottomSheet(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(25.0)),
        ),
        context: context,
        builder: (context) {
          return Container(
            margin: const EdgeInsets.symmetric(vertical: 0, horizontal: 0),
            height: MediaQuery.of(context).size.height * 1 / 5,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 100, right: 100),
                  child: SizedBox(
                    height: 5.0,
                    child: Container(
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(196, 196, 196, 196),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: const Center(
                          child: Text(""),
                        )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 270.0),
                  child: Text(
                    'Pilih Level',
                    style: GoogleFonts.montserrat(
                      //color: Colors.white,
                      fontSize: 17,
                      fontWeight: FontWeight.w700,
                      foreground: Paint()
                        // ..style = PaintingStyle.stroke
                        // ..strokeWidth = 2
                        ..color = const Color.fromARGB(255, 46, 46, 46),
                      // //fontFamily: 'Montserrat',
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 18.0, right: 100),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ElevatedButton(
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  const Color.fromARGB(255, 0, 154, 173)),
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                              ))),
                          onPressed: () {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                '1',
                                style: GoogleFonts.montserrat(
                                  //color: Colors.white,
                                  fontSize: 17,
                                  fontWeight: FontWeight.w400,
                                  foreground: Paint()
                                    // ..style = PaintingStyle.stroke
                                    // ..strokeWidth = 2
                                    ..color = Colors.white,
                                  // //fontFamily: 'Montserrat',
                                ),
                              ),
                              const Icon(Icons.check)
                            ],
                          )),
                      ElevatedButton(
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all(const CircleBorder(
                                side: BorderSide(
                              color: Color.fromARGB(255, 0, 154, 173),
                            ))),
                            backgroundColor: MaterialStateProperty.all<Color>(
                                const Color.fromARGB(255, 255, 255, 255)),
                          ),
                          onPressed: () {},
                          child: Text(
                            '2',
                            style: GoogleFonts.montserrat(
                              //color: Colors.white,
                              fontSize: 17,
                              fontWeight: FontWeight.w400,
                              foreground: Paint()
                                // ..style = PaintingStyle.stroke
                                // ..strokeWidth = 2
                                ..color = Colors.black,
                              // //fontFamily: 'Montserrat',
                            ),
                          )),
                      ElevatedButton(
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all(const CircleBorder(
                                side: BorderSide(
                              color: Color.fromARGB(255, 0, 154, 173),
                            ))),
                            backgroundColor: MaterialStateProperty.all<Color>(
                                const Color.fromARGB(255, 255, 255, 255)),
                          ),
                          onPressed: () {},
                          child: Text(
                            '3',
                            style: GoogleFonts.montserrat(
                              //color: Colors.white,
                              fontSize: 17,
                              fontWeight: FontWeight.w400,
                              foreground: Paint()
                                // ..style = PaintingStyle.stroke
                                // ..strokeWidth = 2
                                ..color = Colors.black,
                              // //fontFamily: 'Montserrat',
                            ),
                          )),
                      ElevatedButton(
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all(const CircleBorder(
                                side: BorderSide(
                              color: Color.fromARGB(255, 0, 154, 173),
                            ))),
                            backgroundColor: MaterialStateProperty.all<Color>(
                                const Color.fromARGB(255, 255, 255, 255)),
                          ),
                          onPressed: () {},
                          child: Text(
                            '4',
                            style: GoogleFonts.montserrat(
                              //color: Colors.white,
                              fontSize: 17,
                              fontWeight: FontWeight.w400,
                              foreground: Paint()
                                // ..style = PaintingStyle.stroke
                                // ..strokeWidth = 2
                                ..color = Colors.black,
                              // //fontFamily: 'Montserrat',
                            ),
                          )),
                      ElevatedButton(
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all(const CircleBorder(
                                side: BorderSide(
                              color: Color.fromARGB(255, 0, 154, 173),
                            ))),
                            backgroundColor: MaterialStateProperty.all<Color>(
                                const Color.fromARGB(255, 255, 255, 255)),
                          ),
                          onPressed: () {},
                          child: Text(
                            '5',
                            style: GoogleFonts.montserrat(
                              //color: Colors.white,
                              fontSize: 17,
                              fontWeight: FontWeight.w400,
                              foreground: Paint()
                                // ..style = PaintingStyle.stroke
                                // ..strokeWidth = 2
                                ..color = Colors.black,
                              // //fontFamily: 'Montserrat',
                            ),
                          )),
                    ],
                  ),
                ),
              ],
            ),
          );
        });
  }

  Future<dynamic> ModalBottomToping(BuildContext context) {
    return showModalBottomSheet(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(25.0)),
        ),
        context: context,
        builder: (context) {
          return Container(
            margin: const EdgeInsets.symmetric(vertical: 0, horizontal: 0),
            height: MediaQuery.of(context).size.height * 1 / 5,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 100, right: 100),
                  child: SizedBox(
                    height: 5.0,
                    child: Container(
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(196, 196, 196, 196),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: const Center(
                          child: Text(""),
                        )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 270.0),
                  child: Text(
                    'Pilih Toping',
                    style: GoogleFonts.montserrat(
                      //color: Colors.white,
                      fontSize: 17,
                      fontWeight: FontWeight.w700,
                      foreground: Paint()
                        // ..style = PaintingStyle.stroke
                        // ..strokeWidth = 2
                        ..color = const Color.fromARGB(255, 46, 46, 46),
                      // //fontFamily: 'Montserrat',
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 18.0, right: 80),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ElevatedButton(
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  const Color.fromARGB(255, 0, 154, 173)),
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                              ))),
                          onPressed: () {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                'Mozarella',
                                style: GoogleFonts.montserrat(
                                  //color: Colors.white,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  foreground: Paint()
                                    // ..style = PaintingStyle.stroke
                                    // ..strokeWidth = 2
                                    ..color = Colors.white,
                                  // //fontFamily: 'Montserrat',
                                ),
                              ),
                              const Icon(Icons.check)
                            ],
                          )),
                      ElevatedButton(
                          style: ButtonStyle(
                            shape: MaterialStateProperty
                                .all<RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(18.0),
                                        side: const BorderSide(
                                          color:
                                              Color.fromARGB(255, 0, 154, 173),
                                        ))),
                            backgroundColor: MaterialStateProperty.all<Color>(
                                const Color.fromARGB(255, 255, 255, 255)),
                          ),
                          onPressed: () {},
                          child: Text(
                            'Sausage',
                            style: GoogleFonts.montserrat(
                              //color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              foreground: Paint()
                                // ..style = PaintingStyle.stroke
                                // ..strokeWidth = 2
                                ..color = Colors.black,
                              // //fontFamily: 'Montserrat',
                            ),
                          )),
                      ElevatedButton(
                          style: ButtonStyle(
                            shape: MaterialStateProperty
                                .all<RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(18.0),
                                        side: const BorderSide(
                                          color:
                                              Color.fromARGB(255, 0, 154, 173),
                                        ))),
                            backgroundColor: MaterialStateProperty.all<Color>(
                                const Color.fromARGB(255, 255, 255, 255)),
                          ),
                          onPressed: () {},
                          child: Text(
                            'Dimsum',
                            style: GoogleFonts.montserrat(
                              //color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              foreground: Paint()
                                // ..style = PaintingStyle.stroke
                                // ..strokeWidth = 2
                                ..color = Colors.black,
                              // //fontFamily: 'Montserrat',
                            ),
                          )),
                    ],
                  ),
                ),
              ],
            ),
          );
        });
  }

  Future<dynamic> ModalBottomBuatCatatan(BuildContext context) {
    return showModalBottomSheet(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(25.0)),
        ),
        context: context,
        builder: (context) {
          return Container(
            margin: const EdgeInsets.symmetric(vertical: 0, horizontal: 0),
            height: MediaQuery.of(context).size.height * 1 / 5,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 100, right: 100),
                  child: SizedBox(
                    height: 5.0,
                    child: Container(
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(196, 196, 196, 196),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: const Center(
                          child: Text(""),
                        )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 270.0),
                  child: Text(
                    'Buat Catatan',
                    style: GoogleFonts.montserrat(
                      //color: Colors.white,
                      fontSize: 17,
                      fontWeight: FontWeight.w700,
                      foreground: Paint()
                        // ..style = PaintingStyle.stroke
                        // ..strokeWidth = 2
                        ..color = const Color.fromARGB(255, 46, 46, 46),
                      // //fontFamily: 'Montserrat',
                    ),
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.only(left: 18.0, right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Flexible(
                          flex: 5,
                          child: TextFormField(
                            initialValue:
                                'Lorem ipsum dolor sit amet, consectetur adipisicing elit',
                          ),
                        ),
                        Flexible(
                          flex: 1,
                          child: ElevatedButton(
                              style: ButtonStyle(
                                shape: MaterialStateProperty.all(
                                    const CircleBorder(
                                        side: BorderSide(
                                  color: Color.fromARGB(255, 0, 154, 173),
                                ))),
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        const Color.fromARGB(255, 0, 154, 173)),
                              ),
                              onPressed: () {},
                              child: const Icon(
                                Icons.check,
                                size: 14,
                              )),
                        ),
                      ],
                    )),
              ],
            ),
          );
        });
  }
}
