import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:ui_clone/const/colors.dart';
import 'package:ui_clone/const/commnwidget.dart';
import 'package:ui_clone/widgets/feature_section.dart';
import 'package:ui_clone/widgets/feature_tile.dart';
import 'package:ui_clone/widgets/premiun_card.dart';

class Premium extends StatelessWidget {
  const Premium({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Stack(
        children: [
          SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: Column(
              children: [
                buildAppBarpremium(),
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      sizedBox130,
                      const FeatureSection(),
                      horizondalDivider1,
                      Container(
                        height: 180,
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        child: Column(
                          children: [
                            Text(
                              'What is Dukaan premium?',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          const Positioned(
            top: 75,
            left: 10,
            child: premiumCard(),
          ),
          buildCompanyRight()
        ],
      ),
    );
  }

  //?======================extact widgets============================================================================

  Container buildAppBarpremium() {
    return Container(
      height: 120,
      child: AppBar(
        leading: IconButton(
            onPressed: () {},
            icon: const Icon(Symbols.arrow_left_alt_rounded,
                size: 40, color: Colors.white)),
        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(10),
          child: SizedBox(),
        ),
        title: Text(
          "Dukaan Premium",
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
      ),
    );
  }

  Positioned buildCompanyRight() {
    return const Positioned(
        top: 95,
        left: 290,
        child: Text(
          '\u00AE ',
          style: TextStyle(color: Colors.black, fontSize: 15),
        ));
  }
}
