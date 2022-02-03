// ignore_for_file: non_constant_identifier_names, must_be_immutable, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:java_code/beranda/ListMakanan/makanan_model.dart';
import 'package:java_code/beranda/makananProvider.dart';
import 'package:java_code/pesanan/pesanan.dart';
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
      backgroundColor: const Color.fromARGB(255, 229, 229, 229),
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            WidgetTittle(context),
            WidgetImageDetailMakanan(),
            widgetDetailMakanan(context),
          ],
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
        margin: const EdgeInsets.symmetric(vertical: 0, horizontal: 0),
        decoration: const BoxDecoration(
            color: Color.fromARGB(255, 255, 255, 255),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30.0),
              topRight: Radius.circular(30.0),
            )),
        child: Column(
          mainAxisSize: MainAxisSize.min,
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
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      foreground: Paint()
                        ..strokeWidth = 2
                        ..color = const Color.fromARGB(255, 0, 154, 173),
                    ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      ChangeNotifierProvider(
                        create: (context) => MakananProvider(),
                        child: Builder(builder: (BuildContext newContext) {
                          return IconButton(
                              onPressed: () {
                                setState(() {
                                  newContext
                                      .read<MakananProvider>()
                                      .listMakananProvider[widget.index]
                                      .jumlah--;
                                  // listMinuman[index].jumlah =
                                  //     newContext
                                  //         .read<MinumanProvider>()
                                  //         .jumlah;
                                });
                              },
                              icon: const Icon(Icons.remove));
                        }),
                      ),
                      ChangeNotifierProvider(
                        create: (context) => MakananProvider(),
                        child: Builder(builder: (BuildContext newContext) {
                          return Text(
                            '${newContext.read<MakananProvider>().listMakananProvider[widget.index].jumlah}',
                            style: GoogleFonts.montserrat(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          );
                        }),
                      ),
                      ChangeNotifierProvider(
                        create: (context) => MakananProvider(),
                        child: Builder(builder: (BuildContext newContext) {
                          return IconButton(
                            onPressed: () {
                              setState(() {
                                newContext
                                    .read<MakananProvider>()
                                    .listMakananProvider[widget.index]
                                    .jumlah++;
                                // listMinuman[index].jumlah =
                                //     newContext
                                //         .read<MinumanProvider>()
                                //         .jumlah;
                              });
                            },
                            icon: const Icon(Icons.add_box),
                            color: const Color.fromARGB(255, 0, 154, 173),
                          );
                        }),
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
                        ..color = const Color.fromARGB(255, 0, 154, 173),
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
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          foreground: Paint()
                            ..color = const Color.fromARGB(255, 46, 46, 46),
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
                      icon: ChangeNotifierProvider(
                        create: (context) => MakananProvider(),
                        child: Builder(builder: (BuildContext newContext) {
                          return Text(
                            '${newContext.read<MakananProvider>().listMakananProvider[widget.index].level}',
                            style: GoogleFonts.montserrat(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              foreground: Paint()
                                ..color = const Color.fromARGB(255, 46, 46, 46),
                            ),
                          );
                        }),
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
                      icon: ChangeNotifierProvider(
                        create: (context) => MakananProvider(),
                        child: Builder(builder: (BuildContext newContext) {
                          return Text(
                            '${newContext.read<MakananProvider>().listMakananProvider[widget.index].topping}',
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
                          );
                        }),
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
                        ModalBottomCatatan(context);
                      },
                      label: const Icon(
                        Icons.chevron_right,
                        color: Colors.black,
                      ),
                      icon: ChangeNotifierProvider(
                        create: (context) => MakananProvider(),
                        child: Builder(builder: (BuildContext newContext) {
                          return Text(
                            '${newContext.read<MakananProvider>().listMakananProvider[widget.index].catatan}',
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
                          );
                        }),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Divider(),
            const SizedBox(
              height: 20,
            ),
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
                onPressed: () {
                  // tambah ke list makanan
                  // push to halaman pesanan
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Pesanan()),
                  );
                },
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
        ));
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
                ButtonLevel(),
              ],
            ),
          );
        });
  }

  ChangeNotifierProvider<MakananProvider> ButtonLevel() {
    return ChangeNotifierProvider(
      create: (context) => MakananProvider(),
      child: Builder(builder: (BuildContext newContext) {
        return Padding(
          padding: const EdgeInsets.only(left: 18.0, right: 100),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedBtn(newContext, 1),
              ElevatedBtn(newContext, 2),
              ElevatedBtn(newContext, 3),
              ElevatedBtn(newContext, 4),
            ],
          ),
        );
      }),
    );
  }

  ElevatedButton ElevatedBtn(BuildContext newContext, x) {
    if (newContext
            .read<MakananProvider>()
            .listMakananProvider[widget.index]
            .level ==
        x) {
      return ElevatedButton(
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(
                  const Color.fromARGB(255, 0, 154, 173)),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
              ))),
          onPressed: () {},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                '${newContext.read<MakananProvider>().listMakananProvider[widget.index].level}',
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
          ));
    } else {
      return ElevatedButton(
          style: ButtonStyle(
            shape: MaterialStateProperty.all(const CircleBorder(
                side: BorderSide(
              color: Color.fromARGB(255, 0, 154, 173),
            ))),
            backgroundColor: MaterialStateProperty.all<Color>(
                const Color.fromARGB(255, 255, 255, 255)),
          ),
          onPressed: () {
            setState(() {
              newContext
                  .read<MakananProvider>()
                  .listMakananProvider[widget.index]
                  .level = x;
            });
            Navigator.pop(context);
          },
          child: Text(
            '$x',
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
          ));
    }
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
                ButtonToping()
              ],
            ),
          );
        });
  }

  ChangeNotifierProvider<MakananProvider> ButtonToping() {
    return ChangeNotifierProvider(
      create: (context) => MakananProvider(),
      child: Builder(builder: (BuildContext newContext) {
        return Padding(
          padding: const EdgeInsets.only(left: 18.0, right: 80),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              EltvdBtnToping(newContext, 'Mozarella'),
              EltvdBtnToping(newContext, 'Dimsum'),
              EltvdBtnToping(newContext, 'Keju'),
            ],
          ),
        );
      }),
    );
  }

  ElevatedButton EltvdBtnToping(BuildContext newContext, toping) {
    if (newContext
            .read<MakananProvider>()
            .listMakananProvider[widget.index]
            .topping ==
        toping) {
      return ElevatedButton(
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(
                  const Color.fromARGB(255, 0, 154, 173)),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
              ))),
          onPressed: () {
            setState(() {});
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                '$toping',
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
          ));
    } else {
      return ElevatedButton(
          style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                    side: const BorderSide(
                      color: Color.fromARGB(255, 0, 154, 173),
                    ))),
            backgroundColor: MaterialStateProperty.all<Color>(
                const Color.fromARGB(255, 255, 255, 255)),
          ),
          onPressed: () {
            setState(() {
              newContext
                  .read<MakananProvider>()
                  .listMakananProvider[widget.index]
                  .topping = toping;
            });
            Navigator.pop(context);
          },
          child: Text(
            '$toping',
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
          ));
    }
  }

  Future<dynamic> ModalBottomCatatan(BuildContext context) {
    TextEditingController controllerCatatanMakanan =
        TextEditingController(text: listMakanan[widget.index].catatan);
    return showModalBottomSheet(
        isScrollControlled: true,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(25.0)),
        ),
        // clipBehavior: Clip.antiAliasWithSaveLayer,
        context: context,
        builder: (context) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(
                height: 20,
              ),
              //garis atas
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
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 270.0, bottom: 10),
                child: Text(
                  'Buat Catatan',
                  style: GoogleFonts.montserrat(
                    // color: Colors.amber,
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
              const SizedBox(
                height: 20,
              ),
              //textform catatan
              Padding(
                  padding: EdgeInsets.only(
                      left: 18.0,
                      right: 10,
                      bottom: MediaQuery.of(context).viewInsets.bottom),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Flexible(
                        flex: 5,
                        child: ChangeNotifierProvider(
                          create: (context) => MakananProvider(),
                          child: Builder(builder: (BuildContext newContext) {
                            return TextFormField(
                              controller: controllerCatatanMakanan,
                              // initialValue:
                              //     '${newContext.read<MakananProvider>().listMakananProvider[widget.index].catatan}',
                            );
                          }),
                        ),
                      ),
                      ChangeNotifierProvider(
                        create: (context) => MakananProvider(),
                        child: Builder(builder: (BuildContext newContext) {
                          return Flexible(
                            flex: 1,
                            child: ElevatedButton(
                                style: ButtonStyle(
                                  shape: MaterialStateProperty.all(
                                      const CircleBorder(
                                          side: BorderSide(
                                    color: Color.fromARGB(255, 0, 154, 173),
                                  ))),
                                  backgroundColor: MaterialStateProperty.all<
                                          Color>(
                                      const Color.fromARGB(255, 0, 154, 173)),
                                ),
                                onPressed: () {
                                  setState(() {
                                    newContext
                                            .read<MakananProvider>()
                                            .listMakananProvider[widget.index]
                                            .catatan =
                                        controllerCatatanMakanan.text;
                                  });
                                  Navigator.pop(context);
                                },
                                child: const Icon(
                                  Icons.check,
                                  size: 14,
                                )),
                          );
                        }),
                      ),
                    ],
                  )),
              const SizedBox(
                height: 20,
              ),
            ],
          );
        });
  }
}
