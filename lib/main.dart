import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:java_code/check_connection/check_connection.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:java_code/google_signin/google_sigin.dart';
import 'package:provider/provider.dart';
import 'loading_menemukan_lokasi/loading_menemukan_lokasi.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
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
  @override
  void initState() {
    super.initState();
    checkInternet().checkConnection(context);
  }

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
          padding: const EdgeInsetsDirectional.fromSTEB(20, 20, 20, 0),
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
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
                  padding: EdgeInsetsDirectional.fromSTEB(16, 80, 0, 0),
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
                      padding: EdgeInsetsDirectional.fromSTEB(16, 25, 0, 0),
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
                          labelStyle: GoogleFonts.montserrat(
                            color: const Color(0xFF757575),
                          ),
                          hintText: 'Lorem.ipsum@gmail.com',
                          hintStyle: GoogleFonts.montserrat(
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
                          color: const Color(0xFF757575),
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(16, 25, 0, 0),
                      child: Text(
                        'Kata Sandi',
                        style: GoogleFonts.montserrat(),
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
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    const LoadingMenentukanLokasi(),
                              ),
                            );
                          },
                          child: const Text('MASUK')),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0, 35, 0, 0),
                      child: Text(
                        'atau',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.montserrat(),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(12, 5, 0, 0),
                      child: ChangeNotifierProvider(
                        create: (context) => GoogleSignInProvider(),
                        child: Builder(builder: (BuildContext newContext) {
                          return ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  fixedSize: const Size(336, 44),
                                  primary:
                                      const Color.fromARGB(255, 255, 255, 255),
                                  shadowColor:
                                      const Color.fromARGB(255, 46, 46, 46),
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(20.0))),
                              onPressed: () {
                                newContext
                                    .read<GoogleSignInProvider>()
                                    .googleLogin()
                                    .then((value) => Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                const LoadingMenentukanLokasi(),
                                          ),
                                        ));
                              },
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
                              ));
                        }),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(12, 5, 0, 0),
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
