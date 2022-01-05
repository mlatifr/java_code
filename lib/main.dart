import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController textControllerEmail = TextEditingController();
  TextEditingController textControllerPasword = TextEditingController();
  bool passwordVisibility = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // key: scaffoldKey,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(30, 38, 30, 0),
          child: Container(
            width: 367,
            height: 825,
            decoration: BoxDecoration(
              color: Colors.white,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: Image.asset(
                  'assets/login/pattern1.png',
                ).image,
              ),
            ),
            child: ListView(
              padding: EdgeInsets.zero,
              scrollDirection: Axis.vertical,
              children: [
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(48, 42, 38, 0),
                  child: Image.asset(
                    'assets/login/JavaCode.png',
                    width: 270,
                    height: 91,
                    fit: BoxFit.cover,
                  ),
                ),
                const Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(16, 121, 0, 0),
                  child: Text(
                    'Masuk Untuk Melanjutkan!',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(16, 40, 0, 0),
                      child: Text(
                        'Alamat Email',
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(16, 5, 0, 0),
                      child: TextFormField(
                        controller: textControllerEmail,
                        obscureText: false,
                        decoration: InputDecoration(
                          // labelText: 'Lorem.ipsum@gmail.com',
                          labelStyle: GoogleFonts.montserrat(
                            // fontFamily: 'Montserrat',
                            color: const Color(0xFF757575),
                          ),
                          hintText: 'Lorem.ipsum@gmail.com',
                          hintStyle: GoogleFonts.montserrat(
                            // fontFamily: 'Montserrat',
                            color: const Color(0xFF757575),
                          ),
                          enabledBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xFF009AAD),
                              width: 1,
                            ),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(4.0),
                              topRight: Radius.circular(4.0),
                            ),
                          ),
                          focusedBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xFF009AAD),
                              width: 1,
                            ),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(4.0),
                              topRight: Radius.circular(4.0),
                            ),
                          ),
                          filled: true,
                          fillColor: Colors.white,
                        ),
                        style: GoogleFonts.montserrat(
                          // fontFamily: 'Montserrat',
                          color: const Color(0xFF757575),
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(16, 40, 0, 0),
                      child: Text(
                        'Kata Sandi',
                        style: GoogleFonts.montserrat(
                            // fontFamily: 'Montserrat',
                            ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(16, 5, 0, 0),
                      child: TextFormField(
                        controller: textControllerPasword,
                        obscureText: !passwordVisibility,
                        decoration: InputDecoration(
                          hintText: '*********',
                          hintStyle: GoogleFonts.montserrat(
                            // fontFamily: 'Montserrat',
                            color: const Color(0xFF757575),
                          ),
                          enabledBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xFF009AAD),
                              width: 1,
                            ),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(4.0),
                              topRight: Radius.circular(4.0),
                            ),
                          ),
                          focusedBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xFF009AAD),
                              width: 1,
                            ),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(4.0),
                              topRight: Radius.circular(4.0),
                            ),
                          ),
                          filled: true,
                          fillColor: Colors.white,
                          suffixIcon: InkWell(
                            onTap: () => setState(
                              () => passwordVisibility = !passwordVisibility,
                            ),
                            child: Icon(
                              passwordVisibility
                                  ? Icons.visibility_outlined
                                  : Icons.visibility_off_outlined,
                              color: const Color(0xFF757575),
                              size: 22,
                            ),
                          ),
                        ),
                        style: GoogleFonts.montserrat(
                          // fontFamily: 'Montserrat',
                          color: const Color(0xFF757575),
                        ),
                        textAlign: TextAlign.start,
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(12, 40, 0, 0),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              fixedSize: const Size(336, 44),
                              primary: const Color(0xFF009AAD),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.0))),
                          onPressed: () {},
                          child: const Text('MASUK')),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0, 60, 0, 0),
                      child: Text(
                        'atau',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.montserrat(
                            // fontSize: 24,
                            // color: Colors.blue,
                            ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(12, 40, 0, 0),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              fixedSize: const Size(336, 44),
                              primary: const Color.fromARGB(255, 255, 255, 255),
                              shadowColor:
                                  const Color.fromARGB(255, 46, 46, 46),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.0))),
                          onPressed: () {},
                          child: Row(
                            children: [
                              const SizedBox(
                                width: 25,
                              ),
                              Image.asset(
                                'assets/login/google_icon.png',
                                width: 20,
                                height: 20,
                                fit: BoxFit.cover,
                              ),
                              const SizedBox(
                                width: 25,
                              ),
                              const Text(
                                'Masuk Menggunakan ',
                                style: TextStyle(color: Colors.black),
                              ),
                              const Text(
                                'Google',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w700),
                              ),
                            ],
                          )),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(12, 40, 0, 0),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              fixedSize: const Size(336, 44),
                              primary: const Color.fromARGB(255, 30, 30, 30),
                              shadowColor:
                                  const Color.fromARGB(255, 46, 46, 46),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.0))),
                          onPressed: () {},
                          child: Row(
                            children: [
                              const SizedBox(
                                width: 25,
                              ),
                              Image.asset(
                                'assets/login/apple_icon.png',
                                width: 20,
                                height: 20,
                                fit: BoxFit.cover,
                              ),
                              const SizedBox(
                                width: 25,
                              ),
                              const Text(
                                'Masuk Menggunakan ',
                                style: TextStyle(color: Colors.white),
                              ),
                              const Text(
                                'Apple',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700),
                              ),
                            ],
                          )),
                    ),
                    // Padding(
                    //   padding: EdgeInsetsDirectional.fromSTEB(12, 9, 0, 0),
                    //   child: FFButtonWidget(
                    //     onPressed: () {
                    //       print('Button pressed ...');
                    //     },
                    //     text: 'Masuk Menggunakan Google',
                    //     icon: FaIcon(
                    //       FontAwesomeIcons.google,
                    //     ),
                    //     options: FFButtonOptions(
                    //       width: 300,
                    //       height: 40,
                    //       color: FlutterFlowTheme.tertiaryColor,
                    //       textStyle: FlutterFlowTheme.subtitle2.override(
                    //         fontFamily: 'Montserrat',
                    //         color: Colors.black,
                    //       ),
                    //       borderSide: BorderSide(
                    //         color: Colors.black,
                    //         width: 1,
                    //       ),
                    //       borderRadius: 20,
                    //     ),
                    //   ),
                    // ),
                    // Padding(
                    //   padding: EdgeInsetsDirectional.fromSTEB(12, 17, 0, 0),
                    //   child: FFButtonWidget(
                    //     onPressed: () {
                    //       print('Button pressed ...');
                    //     },
                    //     text: 'Masuk Menggunakan Apple',
                    //     icon: FaIcon(
                    //       FontAwesomeIcons.apple,
                    //     ),
                    //     options: FFButtonOptions(
                    //       width: 300,
                    //       height: 40,
                    //       color: Colors.black,
                    //       textStyle: FlutterFlowTheme.subtitle2.override(
                    //         fontFamily: 'Montserrat',
                    //         color: Colors.white,
                    //       ),
                    //       borderSide: BorderSide(
                    //         color: Colors.transparent,
                    //         width: 1,
                    //       ),
                    //       borderRadius: 20,
                    //     ),
                    //   ),
                    // ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
