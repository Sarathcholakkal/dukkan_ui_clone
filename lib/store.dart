import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:ui_clone/colors.dart';

class Store extends StatefulWidget {
  const Store({super.key});

  @override
  State<Store> createState() => _StoreState();
}

class _StoreState extends State<Store> {
  int seletedIndex = 0;
  void onTapp(int index) {
    setState(() {
      seletedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        automaticallyImplyLeading: false,
        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(5),
          child: SizedBox(),
        ),
        title: InkWell(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: Text(
            "Manage Store",
            style: GoogleFonts.quicksand(
              textStyle: const TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 22,
                  color: Colors.white),
            ),
          ),
        ),
        centerTitle: true,
        backgroundColor: appBarColor,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: GridView(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 1.6,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10),
            children: [
              Card(
                color: Colors.white,
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5))),
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          Container(
                            height: 45,
                            width: 45,
                            decoration: BoxDecoration(
                              color: Color(0xFFEF7019),
                              borderRadius: const BorderRadius.all(
                                Radius.circular(4),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 5,
                            top: 7,
                            child: Image.asset(
                              'asset/iocn/speaker2.png',
                              width: 30,
                              height: 30,
                            ),
                          )
                        ],
                      ),
                      const SizedBox(height: 4),
                      Text(
                        'Marketing',
                        style: GoogleFonts.quicksand(
                          textStyle: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              height: 1.2),
                        ),
                      ),
                      Text(
                        'Designs',
                        style: GoogleFonts.quicksand(
                          textStyle: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              height: 1.2),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Card(
                color: Colors.white,
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5))),
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          Container(
                            height: 45,
                            width: 45,
                            decoration: const BoxDecoration(
                              color: Color(0xFF63D261),
                              borderRadius: BorderRadius.all(
                                Radius.circular(4),
                              ),
                            ),
                          ),
                          const Positioned(
                            left: 10,
                            top: 10,
                            child: Icon(
                              Icons.currency_rupee,
                              color: Colors.white,
                            ),
                          ),
                          Positioned(
                            left: 5,
                            top: 4,
                            child: Container(
                              width: 35,
                              height: 35,
                              decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Colors.white, width: 2),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(50))),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(height: 4),
                      Text(
                        'Online',
                        style: GoogleFonts.quicksand(
                          textStyle: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              height: 1.2),
                        ),
                      ),
                      Text(
                        'Payments',
                        style: GoogleFonts.quicksand(
                          textStyle: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              height: 1.2),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Card(
                color: Colors.white,
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5))),
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          Container(
                            height: 45,
                            width: 45,
                            decoration: const BoxDecoration(
                              color: Color(0xFFF4B252),
                              borderRadius: const BorderRadius.all(
                                Radius.circular(4),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 5,
                            top: 5,
                            child: Image.asset(
                              'asset/iocn/discount.png',
                              width: 34,
                              height: 34,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 4),
                      Text(
                        'Discount',
                        style: GoogleFonts.quicksand(
                          textStyle: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              height: 1.2),
                        ),
                      ),
                      Text(
                        'Coupons',
                        style: GoogleFonts.quicksand(
                          textStyle: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              height: 1.2),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Card(
                color: Colors.white,
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5))),
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          Container(
                            height: 45,
                            width: 45,
                            decoration: BoxDecoration(
                              color: Color(0xFF18A99B),
                              borderRadius: const BorderRadius.all(
                                Radius.circular(4),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 2,
                            top: 2,
                            child: Image.asset(
                              'asset/iocn/user.png', //! due exported format  i can't adjust size of icon
                              width: 40,
                              height: 40,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 4),
                      Text(
                        'My',
                        style: GoogleFonts.quicksand(
                          textStyle: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              height: 1.2),
                        ),
                      ),
                      Text(
                        'Customers',
                        style: GoogleFonts.quicksand(
                          textStyle: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              height: 1.2),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Card(
                color: Colors.white,
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5))),
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          Container(
                            height: 45,
                            width: 45,
                            decoration: const BoxDecoration(
                              color: Color(0xFF7C7C7C),
                              borderRadius: BorderRadius.all(
                                Radius.circular(4),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 20,
                            top: 20,
                            child: Container(
                              width: 7,
                              height: 7,
                              color: Colors.white,
                            ),
                          ),
                          const Positioned(
                            left: 6,
                            top: 6,
                            child: Icon(
                              Icons.crop_free_rounded,
                              size: 35,
                              color: Colors.white,
                              weight: .7,
                            ),
                          )
                        ],
                      ),
                      const SizedBox(height: 4),
                      Text(
                        'Store QR',
                        style: GoogleFonts.quicksand(
                          textStyle: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              height: 1.2),
                        ),
                      ),
                      Text(
                        'Code',
                        style: GoogleFonts.quicksand(
                          textStyle: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              height: 1.2),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Card(
                color: Colors.white,
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5))),
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          Container(
                            height: 45,
                            width: 45,
                            decoration: const BoxDecoration(
                              color: Color(0xFF6F43A5),
                              borderRadius: BorderRadius.all(
                                Radius.circular(4),
                              ),
                            ),
                          ),
                          const Positioned(
                            left: 7,
                            top: 7,
                            child: Icon(
                              Icons.payments_outlined,
                              size: 30,
                              color: Colors.white,
                              weight: .5,
                            ),
                          )
                        ],
                      ),
                      const SizedBox(height: 4),
                      Text(
                        'Extra',
                        style: GoogleFonts.quicksand(
                          textStyle: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              height: 1.2),
                        ),
                      ),
                      Text(
                        'Charges',
                        style: GoogleFonts.quicksand(
                          textStyle: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              height: 1.2),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Card(
                color: Colors.white,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(5),
                  ),
                ),
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Stack(
                            children: [
                              Container(
                                height: 45,
                                width: 45,
                                decoration: const BoxDecoration(
                                  color: Color(0xFFBF5A88),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(4),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 3,
                                top: 2,
                                child: Image.asset(
                                  'asset/iocn/align.png', //! due exported format  i can't adjust size of icon
                                  width: 40,
                                  height: 40,
                                ),
                              ),
                            ],
                          ),
                          Container(
                            width: 45,
                            height: 20,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: const Color(0xFF18A99B),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(3)),
                            ),
                            child: Text(
                              'NEW',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 12),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(height: 4),
                      Text(
                        'Order',
                        style: GoogleFonts.quicksand(
                          textStyle: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              height: 1.2),
                        ),
                      ),
                      Text(
                        'Form',
                        style: GoogleFonts.quicksand(
                          textStyle: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              height: 1.2),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Divider(
            height: 1,
          ),
          BottomNavigationBar(
              backgroundColor: Colors.white,
              type: BottomNavigationBarType.fixed,
              currentIndex: seletedIndex,
              onTap: onTapp,
              selectedItemColor: appBarColor,
              unselectedItemColor: Colors.grey[500],
              selectedLabelStyle: const TextStyle(fontWeight: FontWeight.w500),
              unselectedLabelStyle:
                  const TextStyle(fontWeight: FontWeight.w400),
              elevation: 20,
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(
                    Symbols.home_rounded,
                    size: 30,
                  ),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Symbols.order_play),
                  label: 'Orders',
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.square,
                    size: 30,
                  ),
                  label: 'product',
                ),
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.layers,
                      size: 30,
                    ),
                    label: 'Manage'),
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.person_outline,
                      size: 30,
                    ),
                    label: 'Account')
              ]),
        ],
      ),
    );
  }
}
