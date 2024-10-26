import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:ui_clone/catelog.dart';
import 'package:ui_clone/const/collection.dart';
import 'package:ui_clone/const/colors.dart';
import 'package:ui_clone/const/commnwidget.dart';
import 'package:ui_clone/widgets/sucess_indicator.dart';

class Order extends StatelessWidget {
  const Order({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildOrderAppbar(),
      body: Container(
        height: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: Column(
          children: [
            buildHeading(),
            horizondalDivider1,
            buildItemRow(),
            itemDetails(),
            horizondalDivider1,
            buildPriceTile(),
            horizondalDivider1,
            SizedBox(
              height: 260,
              child: Column(
                children: [
                  address1(),
                  sizedBoxv10,
                  address2(),
                  address3(),
                  sizedBox5,
                  address4(),
                  sizedBox5,
                  address5()
                ],
              ),
            ),
            horizondalDivider1,
            GestureDetector(
              onDoubleTap: () => Navigator.of(context)
                  .push(MaterialPageRoute(builder: (ctx) => const Catelog())),
              child: SizedBox(
                height: 210,
                width: double.infinity,
                // color: Colors.green,
                child: buildAdditionInfo(),
              ),
            )
          ],
        ),
      ),
    );
  }

  Column buildAdditionInfo() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'ADDITIONAL INFORMATION',
          style: TextStyle(color: Colors.grey[600]),
        ),
        sizedBox5,
        const TextTile(tittle: 'State', subtittle: 'Karnataka'),
        sizedBoxv10,
        const TextTile(tittle: 'Email', subtittle: 'greeniceaqua@gmail.com'),
        Container(
          margin: const EdgeInsets.only(left: 13, top: 20),
          child: OutlinedButton(
            onPressed: () {},
            style: OutlinedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              side: const BorderSide(
                color: appBarColor,
                width: 2,
              ),
              padding:
                  const EdgeInsets.symmetric(horizontal: 130.0, vertical: 15.0),
            ),
            child: const Text(
              'Share Receipt',
              style: TextStyle(
                color: appBarColor,
              ),
            ),
          ),
        )
      ],
    );
  }

  Row address5() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const TextTile(tittle: 'Payment', subtittle: 'Online'),
        buildPaidTile()
      ],
    );
  }

  Container buildPaidTile() {
    return Container(
      width: 45,
      height: 20,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        border: Border.all(
            width: 1, color: const Color.fromARGB(255, 115, 233, 119)),
        color: const Color.fromARGB(255, 192, 238, 233),
        borderRadius: const BorderRadius.all(
          Radius.circular(3),
        ),
      ),
      child: const Text(
        'PAID',
        style: TextStyle(
            color: greenColor, fontSize: 12, fontWeight: FontWeight.bold),
      ),
    );
  }

  Row address4() {
    return const Row(
      children: [
        TextTile(tittle: 'City', subtittle: 'Banglore'),
        SizedBox(
          width: 110,
        ),
        TextTile(tittle: 'PinCode', subtittle: '560061')
      ],
    );
  }

  SizedBox address3() {
    return const SizedBox(
      height: 70,
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Address',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Text('D 1101 Charatered Breverly \nHills ,Subramanyapuram P,O')
        ],
      ),
    );
  }

  SizedBox address2() {
    return SizedBox(
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Deepa',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                '+91-78290004854',
                style: TextStyle(color: Colors.grey[800]),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                height: 35,
                width: 35,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(width: 3, color: appBarColor)),
                child: const Icon(
                  Icons.phone,
                  color: appBarColor,
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Icon(
                MdiIcons.whatsapp,
                size: 40,
                color: greenColor,
              )
            ],
          )
        ],
      ),
    );
  }

  Row address1() {
    return Row(
      children: [
        Text(
          'CUSTOMER DETAILS',
          style: TextStyle(color: Colors.grey[600]),
        ),
        const Spacer(),
        const Icon(
          Icons.share_outlined,
          color: appBarColor,
        ),
        sizedBoxh10,
        const Text(
          'SHARE',
          style: TextStyle(color: appBarColor),
        ),
      ],
    );
  }

  SizedBox buildPriceTile() {
    return const SizedBox(
      height: 70,
      // color: Colors.red,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Item Total'),
              Text('₹799'),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Delivery'),
              Text(
                'FREE',
                style: TextStyle(color: greenColor),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Grand Total',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                '₹799',
                style:
                    TextStyle(color: greenColor, fontWeight: FontWeight.bold),
              )
            ],
          )
        ],
      ),
    );
  }

  SizedBox itemDetails() {
    return SizedBox(
      height: 100,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              border: Border.all(width: 1, color: Colors.grey),
              borderRadius: BorderRadius.circular(5),
            ),
            margin: const EdgeInsets.only(top: 10),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: Image.asset(
                imageList[2],
                width: 65,
                height: 55,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              const SizedBox(
                height: 8,
              ),
              Text(
                'Explore | Men | Navy Blue',
                style: GoogleFonts.quicksand(
                  textStyle: const TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 14,
                      height: 1.2,
                      wordSpacing: 2,
                      color: Colors.black),
                ),
              ),
              const Text(
                '1 piece',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w300,
                    height: 1.2),
              ),
              Text(
                'Size XL',
                style: GoogleFonts.quicksand(
                  textStyle: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 12,
                      height: 1,
                      wordSpacing: 2,
                      color: Colors.grey[700]),
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    height: 30,
                    width: 30,
                    margin: const EdgeInsets.only(top: 5),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 196, 222, 243),
                      borderRadius: const BorderRadius.all(Radius.circular(2)),
                      border: Border.all(color: appBarColor, width: 1),
                    ),
                    alignment: Alignment.center,
                    child: const Text(
                      '1',
                      style: TextStyle(color: appBarColor),
                    ),
                  ),
                  const Text('  x  ₹799'),
                  const SizedBox(
                    width: 170,
                  ),
                  const Text('₹799'),
                ],
              )
            ],
          )
        ],
      ),
    );
  }

  SizedBox buildItemRow() {
    return SizedBox(
      height: 20,
      child: Row(
        children: [
          Text(
            '1 ITEM',
            style: TextStyle(
              color: Colors.grey[600],
            ),
          ),
          const Spacer(),
          const Icon(
            Icons.receipt_outlined,
            color: appBarColor,
          ),
          sizedBoxh10,
          const Text(
            'RECEIPT',
            style: TextStyle(color: appBarColor, fontWeight: FontWeight.normal),
          )
        ],
      ),
    );
  }

  AppBar buildOrderAppbar() {
    return AppBar(
      leading: IconButton(
          onPressed: () {},
          icon: const Icon(Symbols.arrow_left_alt_rounded,
              size: 40, color: Colors.white)),
      bottom: const PreferredSize(
        preferredSize: Size.fromHeight(5),
        child: SizedBox(),
      ),
      title: Text(
        "Order #1688068",
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
    );
  }

  SizedBox buildHeading() {
    return SizedBox(
      height: 20,
      child: Row(
        children: [
          Text('${monthList[2]} ${dateList[1]}, ${timeList[3]}'),
          const Spacer(),
          const SucessIndicator(),
          sizedBoxh10,
          const Text(
            'Delivered',
            style: TextStyle(fontSize: 16, height: 1.2),
          ),
        ],
      ),
    );
  }
}

class TextTile extends StatelessWidget {
  final String tittle;
  final String subtittle;
  const TextTile({
    super.key,
    required this.tittle,
    required this.subtittle,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            tittle,
            style: const TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold),
          ),
          Text(subtittle)
        ],
      ),
    );
  }
}
