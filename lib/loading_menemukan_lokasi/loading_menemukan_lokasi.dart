import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:java_code/beranda/beranda.dart';
import 'package:java_code/google_signin/google_sigin.dart';
import 'package:provider/provider.dart';

class LoadingMenentukanLokasi extends StatefulWidget {
  const LoadingMenentukanLokasi({Key? key}) : super(key: key);

  @override
  _LoadingMenentukanLokasiState createState() =>
      _LoadingMenentukanLokasiState();
}

class _LoadingMenentukanLokasiState extends State<LoadingMenentukanLokasi> {
  GoogleSignInAccount? user;
  @override
  Widget build(BuildContext context) {
    final userGoogle = FirebaseAuth.instance.currentUser;
    return Scaffold(
      // key: scaffoldKey,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: Image.asset(
                'assets/Loading-MenemukanLokasi/pattern-2.png',
              ).image,
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              ChangeNotifierProvider(
                  create: (context) => GoogleSignInProvider(),
                  child: Builder(builder: (BuildContext newContext) {
                    return ElevatedButton(
                        onPressed: () {
                          // GoogleSignIn().signOut();
                          newContext.read<GoogleSignInProvider>().displayName();
                        },
                        child: Text('logout'));
                  })),
              ChangeNotifierProvider(
                  create: (context) => GoogleSignInProvider(),
                  child: Builder(builder: (BuildContext newContext) {
                    return Text(
                        '${newContext.read<GoogleSignInProvider>().user}');
                  })),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(61, 117, 61, 0),
                child: Text(
                  'Mencari Lokasimu ...',
                  style: GoogleFonts.montserrat(
                    color: const Color(0x801E1E1E),
                    fontSize: 22,
                  ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(0, -0.24),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(84, 49, 85, 0),
                  child: InkWell(
                    onTap: () async {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Beranda(),
                        ),
                      );
                    },
                    child: Image.asset(
                      'assets/Loading-MenemukanLokasi/map.png',
                      width: 190,
                      height: 190,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(57, 49, 57, 0),
                child: Text(
                  'Perumahan\nGriyashanta Permata\nN-524, Mojolangu, \nKec. Lowokwaru, \nKota Malang',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.montserrat(
                    // fontFamily: 'Montserrat',
                    color: const Color(0xFF1E1E1E),
                    fontSize: 22,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
