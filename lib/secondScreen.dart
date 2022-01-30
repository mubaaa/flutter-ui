// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  cards({icons, text, iconbackcolor, tagcolor, tagname}) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadiusDirectional.circular(10),
          color: Colors.white),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: 150,
                      child: Align(
                          alignment: Alignment.topRight,
                          child: Text(
                            tagname,
                            style: const TextStyle(
                                backgroundColor: Colors.green,
                                color: Colors.white),
                          )),
                    )
                  ],
                )
              ],
            ),
            Container(
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadiusDirectional.circular(10),
                  color: iconbackcolor,
                ),
                child: Icon(
                  icons,
                  size: 30,
                  color: Colors.white,
                )),
            const SizedBox(
              height: 12,
            ),
            Text(
              text,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            )
          ],
        ),
      ),
    );
  }






  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white70,
        appBar: AppBar(
          elevation: 0,
          title: const Text('Manage Store'),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: GridView(
              children: [
                cards(
                    icons: Icons.campaign_sharp,
                    text: 'Marketing \nDesigns',
                    iconbackcolor: Colors.orange,
                    tagname: ''),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadiusDirectional.circular(10),
                      color: Colors.white),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 12),
                        Container(
                            padding: const EdgeInsets.only(
                                left: 14, right: 14, top: 8, bottom: 8),
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadiusDirectional.circular(10),
                              color: Colors.green,
                            ),
                            child: const FaIcon(
                              FontAwesomeIcons.rupeeSign,
                              size: 20,
                              color: Colors.white,
                            )),
                        const SizedBox(
                          height: 12,
                        ),
                        const Text(
                          'Online \nPayment',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadiusDirectional.circular(10),
                      color: Colors.white),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 12),
                        Container(
                            padding: const EdgeInsets.only(
                                left: 14, right: 14, top: 9, bottom: 9),
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadiusDirectional.circular(10),
                              color: Colors.orange[300],
                            ),
                            child: const FaIcon(
                              FontAwesomeIcons.percent,
                              size: 20,
                              color: Colors.white,
                            )),
                        const SizedBox(
                          height: 12,
                        ),
                        const Text(
                          'Discount \nCoupons',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                  ),
                ),
                cards(
                    icons: Icons.people,
                    text: 'My \nCustomers',
                    iconbackcolor: Colors.blue,
                    tagname: ''),
                cards(
                    icons: Icons.qr_code_scanner_rounded,
                    text: 'Store QR \nCode',
                    iconbackcolor: Colors.grey,
                    tagname: ''),
                cards(
                    icons: Icons.money_sharp,
                    text: 'Extra \nCharges',
                    iconbackcolor: Colors.indigo[400],
                    tagname: ''),
                cards(
                    icons: Icons.format_align_left,
                    text: 'Order \nForms',
                    iconbackcolor: Colors.purple,
                    tagcolor: Colors.green,
                    tagname: 'New'),
              ],
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisExtent: 150,
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 20)),
        ));
  }
}
