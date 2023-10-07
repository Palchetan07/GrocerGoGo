import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocerystoreapp/pages/home_page.dart';

class IntroScreen extends StatelessWidget {
  IntroScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      body: Column(
        children: [
          //logo
          Padding(
            padding: EdgeInsets.only(left: 80, right: 80, bottom: 80, top: 160),
            child: Image.asset('lib/images/avocado.png'),
          ),

          //we deliver some text
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'We Delivers groceries at your doorstep!',
              textAlign: TextAlign.center,
              style: GoogleFonts.notoSerif(fontSize: 40),
            ),
          ),
          const Spacer(),
          //fresh items everyday
          Text(
            'Fresh items daily',
            style: TextStyle(fontSize: 20, color: Colors.grey[600]),
          ),
          //get started button
          const Spacer(),
          GestureDetector(
            onTap: ()=>  Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) {
              return  HomePage();
            },),),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.purple),
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: Text(
                  'Get Started!',
                  style: GoogleFonts.notoSerif(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
