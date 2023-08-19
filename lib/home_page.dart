import 'dart:math';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: const Color(0xf2faf8f8),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              'TIC - TAC - TOE',
              style: GoogleFonts.acme(
                textStyle: const TextStyle(
                  fontSize: 50,
                  color: Color(0xff172160),
                  fontWeight: FontWeight.bold
                )
              )
            )
          ),
          const SizedBox(height: 30),
          Image(
            image: const AssetImage('assets/tic_tac_toe.png'),
            width: min((mediaQueryData.size.width) * 0.7, 300),
          ),
          const SizedBox(height: 40),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _modeButton('AI Challenge'),
              _modeButton('Local Duel')
            ],
          ),
          const SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _modeButton('Nearby Clash'),
              _modeButton('Private Matchup')
            ],
          ),
        ],
      )
    );
  }

  InkWell _modeButton(String buttonName) {
    return InkWell(
      onTap: (){},
      child: Container(
        padding: const EdgeInsets.all(10),
        width: 160,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: const Color(0xff172160)
        ),
        child: Text(
          buttonName,
          style: GoogleFonts.acme(
            textStyle: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: Color(0xf2faf8f8)
            )
          ),
        ),
      ),
    );
  }
}