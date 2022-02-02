// ignore_for_file: prefer_const_literals_to_create_immutables, non_constant_identifier_names, avoid_print

import 'package:flutter/material.dart';

class Pesanan extends StatefulWidget {
  const Pesanan({Key? key}) : super(key: key);

  @override
  _PesananState createState() => _PesananState();
}

class _PesananState extends State<Pesanan> {
  final screenPesanan = [];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          // extendBodyBehindAppBar: true,
          appBar: AppBar(
            automaticallyImplyLeading: false,
            backgroundColor: Colors.transparent,
            shadowColor: const Color.fromARGB(255, 229, 229, 229),
            elevation: 0,
          ),
          extendBody: true,
          // key: scaffoldKey,
          backgroundColor: const Color.fromARGB(255, 229, 229, 229),
          // backgroundColor: Colors.transparent,
          body: const Text('pesanan')
          // body: WidgetPagePesanan(),
          ),
    );
  }
}
