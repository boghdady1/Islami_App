import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeLayout extends StatelessWidget {
  static const String routeName = "Home";

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          "assets/images/main_bg.png",
          fit: BoxFit.fill,
          width: double.infinity,
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.transparent,
            title: Text(
              'اسلامي',
              style: GoogleFonts.elMessiri(
                fontSize: 30,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            centerTitle: true,
          ),
          body: Center(
            child: Stack(
              children: [
                Column(
                  children: [
                    Image.asset("assets/images/main_icon.png"),
                    Divider(color: Color(0xffB7935F), thickness: 2),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "عدد الايات",
                          style: GoogleFonts.elMessiri(
                              fontSize: 25, fontWeight: FontWeight.normal),
                        ),
                        Text(
                          "اسم السورة",
                          style: GoogleFonts.elMessiri(
                              fontSize: 25, fontWeight: FontWeight.normal),
                        ),
                      ],
                    ),
                    Divider(color: Color(0xffB7935F), thickness: 2),
                  ],
                ),
                Container(
                    height: 300,
                    child: VerticalDivider(
                        thickness: 3, color: Color(0xffB7935F))),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
