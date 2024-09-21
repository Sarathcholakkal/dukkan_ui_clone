import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:ui_clone/const/collection.dart';
import 'package:ui_clone/const/colors.dart';
import 'package:ui_clone/const/commnwidget.dart';

class Catelog extends StatelessWidget {
  const Catelog({super.key});

  @override
  Widget build(BuildContext context) {
    bool value = true;
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          bottom: const PreferredSize(
              preferredSize: Size.fromHeight(20),
              child: TabBar(
                labelColor: Colors.white,
                unselectedLabelColor: Colors.white54,
                indicatorSize: TabBarIndicatorSize.tab,
                indicatorColor: Colors.white,
                tabs: [
                  Tab(
                    child: Text('Products'),
                  ),
                  Tab(
                    child: Text(
                      'Categories',
                      selectionColor: Colors.white,
                    ),
                  ),
                ],
              )),
          title: buildAppBarText(),
          centerTitle: true,
          backgroundColor: appBarColor,
          actions: const [
            Icon(
              Icons.search,
              color: Colors.white,
              size: 35,
            ),
            sizedBoxh10
          ],
        ),
        body: Expanded(
          child: TabBarView(
            children: [
              Container(
                width: double.infinity,
                height: double.infinity,
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                alignment: Alignment.center,
                child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (BuildContext ctx, int indexValue) {
                    final modIndex = indexValue % 10;
                    final priceItem = priceList[modIndex].toString();
                    final imageItem = imageList[modIndex];
                    final tittleItem = tittleList[modIndex];
                    return Card(
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(13),
                        ),
                      ),
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 7),
                        height: 165,
                        child: Column(
                          children: [
                            SizedBox(
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image.asset(
                                      imageItem,
                                      width: 110,
                                      height: 90,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 15,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          SizedBox(
                                            width: 180,
                                            child: Text(
                                              tittleItem,
                                              maxLines: 1,
                                              overflow: TextOverflow.ellipsis,
                                              style: const TextStyle(
                                                  fontWeight: FontWeight.w500),
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 10,
                                          ),
                                          const Icon(Icons.more_vert)
                                        ],
                                      ),
                                      const Text(
                                        '1 piece',
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.grey,
                                            height: 1.6),
                                      ),
                                      Text(
                                        '\u20B9$priceItem',
                                        style: const TextStyle(
                                            fontWeight: FontWeight.bold,
                                            height: 1),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(top: 0),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Text(
                                              'In stock',
                                              style: const TextStyle(
                                                  color: greenColor),
                                            ),
                                            const SizedBox(
                                              width: 100,
                                            ),
                                            Transform.scale(
                                              scale: .8,
                                              child: Switch(
                                                  value: value,
                                                  onChanged: (_value) {
                                                    value = !_value;
                                                  }),
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                            horizondalDivider1,
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.share_outlined,
                                  size: 25,
                                ),
                                sizedBoxh10,
                                Text('Share Product')
                              ],
                            )
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              Container(
                alignment: Alignment.center,
                child: const Text('categories'),
              )
            ],
          ),
        ),
      ),
    );
  }

  Text buildAppBarText() {
    return Text(
      "Catalogue",
      style: GoogleFonts.quicksand(
        textStyle: const TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 20,
          color: Colors.white,
        ),
      ),
    );
  }
}
// Card(
//                     shape: const RoundedRectangleBorder(
//                       borderRadius: BorderRadius.all(
//                         Radius.circular(13),
//                       ),
//                     ),
//                     child: Container(
//                       padding: const EdgeInsets.symmetric(
//                           horizontal: 15, vertical: 7),
//                       height: 165,
//                       child: Column(
//                         children: [
//                           SizedBox(
//                             child: Row(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 ClipRRect(
//                                   borderRadius: BorderRadius.circular(10),
//                                   child: Image.asset(
//                                     imageList[5],
//                                     width: 110,
//                                     height: 90,
//                                     fit: BoxFit.cover,
//                                   ),
//                                 ),
//                                 const SizedBox(
//                                   width: 15,
//                                 ),
//                                 Column(
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   children: [
//                                     Row(
//                                       children: [
//                                         SizedBox(
//                                           width: 180,
//                                           child: Text(
//                                             'COUCH Potato |Woman he hadd ada',
//                                             maxLines: 1,
//                                             overflow: TextOverflow.ellipsis,
//                                             style: const TextStyle(
//                                                 fontWeight: FontWeight.w500),
//                                           ),
//                                         ),
//                                         const SizedBox(
//                                           width: 10,
//                                         ),
//                                         const Icon(Icons.more_vert)
//                                       ],
//                                     ),
//                                     const Text(
//                                       '1 piece',
//                                       style: TextStyle(
//                                           fontSize: 12,
//                                           color: Colors.grey,
//                                           height: 1.6),
//                                     ),
//                                     Text(
//                                       '\u20B9799',
//                                       style: const TextStyle(
//                                           fontWeight: FontWeight.bold,
//                                           height: 1),
//                                     ),
//                                     Container(
//                                       margin: EdgeInsets.only(top: 0),
//                                       child: Row(
//                                         mainAxisAlignment:
//                                             MainAxisAlignment.spaceBetween,
//                                         crossAxisAlignment:
//                                             CrossAxisAlignment.center,
//                                         children: [
//                                           Text(
//                                             'In stock',
//                                             style: const TextStyle(
//                                                 color: greenColor),
//                                           ),
//                                           const SizedBox(
//                                             width: 100,
//                                           ),
//                                           Transform.scale(
//                                             scale: .8,
//                                             child: Switch(
//                                                 value: value,
//                                                 onChanged: (_value) {
//                                                   value = !_value;
//                                                 }),
//                                           )
//                                         ],
//                                       ),
//                                     )
//                                   ],
//                                 )
//                               ],
//                             ),
//                           ),
//                           horizondalDivider1,
//                           const Row(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             children: [
//                               Icon(
//                                 Icons.share_outlined,
//                                 size: 25,
//                               ),
//                               sizedBoxh10,
//                               Text('Share Product')
//                             ],
//                           )
//                         ],
//                       ),
//                     ),
//                   )