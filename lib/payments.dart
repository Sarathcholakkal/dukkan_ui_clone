import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:ui_clone/colors.dart';
import 'package:percent_indicator/percent_indicator.dart';

class Payments extends StatelessWidget {
  const Payments({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {},
            icon: const Icon(Symbols.arrow_left_alt_rounded,
                size: 40, color: Colors.white)),
        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(5),
          child: SizedBox(),
        ),
        title: Text(
          "Payments",
          style: GoogleFonts.quicksand(
            textStyle: const TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 20,
              color: Colors.white,
            ),
          ),
        ),
        centerTitle: true,
        backgroundColor: appBarColor,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              MdiIcons.alertCircleOutline,
              color: Colors.white,
              size: 35,
            ),
          )
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding:
              const EdgeInsets.only(top: 10, left: 15, right: 15, bottom: 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 170,
                width: double.infinity,
                margin: const EdgeInsets.only(top: 2),
                padding:
                    const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: const Color.fromARGB(255, 185, 178, 178),
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Transaction Limit',
                      style: GoogleFonts.quicksand(
                        textStyle: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            height: 1.8,
                            wordSpacing: 3),
                      ),
                    ),
                    Text(
                      'A free limit up to which you will receive \nthe online payments directly in your bank',
                      style: GoogleFonts.quicksand(
                        textStyle: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 13,
                            height: 1.2,
                            wordSpacing: 2,
                            color: Color.fromARGB(255, 141, 140, 140)),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 8, bottom: 8),
                      child: LinearPercentIndicator(
                        lineHeight: 2,
                        progressColor: appBarColor,
                        percent: .3,
                      ),
                    ),
                    Text(
                      '36,668 left out of  ₹50000',
                      style: GoogleFonts.quicksand(
                        textStyle: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 13,
                            height: 1.2,
                            wordSpacing: 2,
                            color: Color.fromARGB(255, 141, 140, 140)),
                      ),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        backgroundColor: appBarColor,
                        foregroundColor: Colors.white,
                        padding: const EdgeInsets.symmetric(
                            vertical: 3, horizontal: 30),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: const Text('Increase Limit'),
                    ),
                  ],
                ),
              ),
              //!==================end of top container session=================
              Flexible(
                child: Row(
                  children: [
                    Text(
                      'Default Method',
                      style: GoogleFonts.quicksand(
                        textStyle: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 13,
                            height: 1.2,
                            wordSpacing: 2,
                            color: Colors.black),
                      ),
                    ),
                    Spacer(),
                    Text('Online Payments',
                        style: GoogleFonts.quicksand(
                          textStyle: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 13,
                              height: 1.2,
                              wordSpacing: 2,
                              color: Colors.grey),
                        )),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.arrow_forward_ios_rounded,
                          size: 25, color: arrowColor),
                    )
                  ],
                ),
              ),
              Flexible(
                child: Row(
                  children: [
                    Text(
                      'Payment Profile',
                      style: GoogleFonts.quicksand(
                        textStyle: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 13,
                            height: 1.2,
                            wordSpacing: 2,
                            color: Colors.black),
                      ),
                    ),
                    Spacer(),
                    Text('Bank Account',
                        style: GoogleFonts.quicksand(
                          textStyle: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 13,
                              height: 1.2,
                              wordSpacing: 2,
                              color: Colors.grey),
                        )),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.arrow_forward_ios_rounded,
                          size: 25, color: arrowColor),
                    )
                  ],
                ),
              ),
              //!==================== row session ended ===========
              Divider(thickness: 1, color: Color(0xFFBFBFBF)),
              Flexible(
                child: Row(
                  children: [
                    Text(
                      'Payment Overview',
                      style: GoogleFonts.quicksand(
                        textStyle: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            height: 1.2,
                            wordSpacing: 2,
                            color: Colors.black),
                      ),
                    ),
                    Spacer(),
                    Text(
                      'Life Time',
                      style: GoogleFonts.quicksand(
                        textStyle: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 13,
                            height: 1.2,
                            wordSpacing: 2,
                            color: Color.fromARGB(255, 141, 140, 140)),
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon:
                          Icon(MdiIcons.arrowDown, size: 25, color: arrowColor),
                    )
                  ],
                ),
              ),
              //!=============Online payment============
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Card(
                    child: Container(
                      width: 180,
                      height: 74,
                      padding: const EdgeInsets.symmetric(
                          vertical: 8, horizontal: 15),
                      decoration: const BoxDecoration(
                        color: Color(0xFFEE741F),
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('AMOUNT ON HOLD',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 12)),
                          Text(
                            '\u20B90',
                            style: TextStyle(color: Colors.white, fontSize: 25),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Card(
                    child: Container(
                      width: 180,
                      height: 74,
                      padding:
                          EdgeInsets.symmetric(vertical: 8, horizontal: 15),
                      decoration: const BoxDecoration(
                        color: Color(0xFF16B31C),
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'AMOUNT RECEIVED',
                            style: TextStyle(color: Colors.white, fontSize: 12),
                          ),
                          Text(
                            '\u20B913,332',
                            style: TextStyle(color: Colors.white, fontSize: 25),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),

              Padding(
                padding: const EdgeInsets.only(left: 8, right: 10),
                child: Text(
                  'Transactions',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
