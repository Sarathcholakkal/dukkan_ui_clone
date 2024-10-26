import 'package:flutter/material.dart';

import 'package:ui_clone/const/colors.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:ui_clone/store.dart';

class AddInfo extends StatefulWidget {
  const AddInfo({super.key});

  @override
  State<AddInfo> createState() => _AddInfoState();
}

class _AddInfoState extends State<AddInfo> {
  bool value = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Symbols.arrow_left_alt_rounded,
              size: 40, color: Colors.white),
        ),
        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(5),
          child: SizedBox(),
        ),
        title: Text(
          "Additional Information",
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
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: Column(
                children: [
                  ListTile(
                    leading: const Icon(
                      Icons.share_outlined,
                      size: 30,
                    ),
                    title: Text(
                      'Share Dukaan App',
                      style: GoogleFonts.quicksand(
                        textStyle: const TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                        ),
                      ),
                    ),
                    trailing: IconButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (ctx) => const Store(),
                          ),
                        );
                      },
                      icon: const Icon(Icons.arrow_forward_ios_rounded,
                          size: 25, color: themeColorBlack),
                    ),
                  ),
                  ListTile(
                    leading: const Stack(
                      children: [
                        Icon(
                          Icons.chat_bubble_outline,
                          size: 30,
                        ),
                        Positioned(
                          bottom: 8,
                          right: 11,
                          child: Text(
                            'A',
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                        )
                      ],
                    ),
                    title: Text(
                      'Change Language',
                      style: GoogleFonts.quicksand(
                        textStyle: const TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                        ),
                      ),
                    ),
                    trailing: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.arrow_forward_ios_rounded,
                          size: 25, color: themeColorBlack),
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      MdiIcons.whatsapp,
                      size: 30,
                    ),
                    title: Text(
                      'WhatsApp Chat Support',
                      style: GoogleFonts.quicksand(
                        textStyle: const TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                        ),
                      ),
                    ),
                    trailing: Switch(
                        value: value,
                        activeColor: appBarColor,
                        onChanged: (value) {
                          setState(() {
                            this.value = value;
                          });
                        }),
                  ),
                  ListTile(
                    leading: const Icon(
                      Icons.lock_outline,
                      size: 35,
                    ),
                    // leading: Image.asset(
                    //   iLockIcon, // Path to your image
                    //   width: 35, // Adjust the width and height as needed
                    //   height: 35,
                    // ),
                    title: Text(
                      'Privacy Policy',
                      style: GoogleFonts.quicksand(
                        textStyle: const TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                  ListTile(
                    leading: const Icon(
                      Icons.star_border_outlined,
                      size: 40,
                    ),
                    title: Text(
                      'Rate Us',
                      style: GoogleFonts.quicksand(
                        textStyle: const TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                  ListTile(
                    leading: const Icon(
                      Icons.logout,
                      size: 35,
                    ),
                    title: Text(
                      'Sign Out',
                      style: GoogleFonts.quicksand(
                        textStyle: const TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              child: const Column(
                children: [
                  Text(
                    'Version',
                    style: TextStyle(
                      color: Colors.black26,
                      letterSpacing: 2,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Text(
                    '2.4.2',
                    style: TextStyle(
                        color: Colors.black54, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 20,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

// material desing icon md package sale-outline