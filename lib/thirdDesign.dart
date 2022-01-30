import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({Key? key}) : super(key: key);

  box({text, fontsize, w, height, top}) {
    return Padding(
      padding: EdgeInsets.only(left: 10, right: 10, top: top),
      child: SizedBox(
        child: Text(text, style: TextStyle(fontSize: fontsize, fontWeight: w)),
      ),
    );
  }

  listTiles({text, trailText, icons, iconsize}) {
    return ListTile(
      title: Text(text),
      trailing: Wrap(
        children: [
          Text(trailText),
          Icon(
            icons,
            size: iconsize,
          )
        ],
      ),
    );
  }

//==============cards===============//

  Widget cards({text, rupees, backcolor}) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: backcolor),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 30,
            ),
            Text(
              text,
              style: const TextStyle(
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                  fontSize: 15),
            ),
            Text(
              rupees,
              style: const TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                  fontSize: 30),
            )
          ],
        ),
      ),
    );
  }

  options({text, backcolor, textclr}) {
    return Container(
      height: 30,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: backcolor),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          text,
          style: TextStyle(color: textclr),
        ),
      ),
    );
  }

//===============productlist=============//
  poductList({oraderno, date, rate, image}) {
    return Column(
      children: [
        SizedBox(
          child: ListTile(
              leading: Container(
                width: 50,
                height: 50,
                child: Image(image: NetworkImage(image)),
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10))),
              ),
              title: Text(oraderno),
              subtitle: Text(date),
              trailing: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text('\u{20B9}$rate'),
                  Wrap(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 3, right: 4),
                        height: 10,
                        width: 10,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.lightGreenAccent[400]),
                      ),
                      const Text('Successful')
                    ],
                  ),
                ],
              )),
        ),
        const Align(
            alignment: Alignment.bottomLeft,
            child: Text('\u{20B9}4534 Deposited to 593430304000434')),
        const Divider()
      ],
    );
  }

  space() {
    return const SizedBox(
      height: 10,
    );
  }

//============scaffold starts================//

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Payments'),
        elevation: 0,
        actions: const [Icon(Icons.info_outline)],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.grey.shade300),
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  box(
                      text: 'Transaction Limit',
                      fontsize: 24.0,
                      w: FontWeight.w400,
                      top: 10.0),
                  box(
                      text:
                          '''A free limit up to which you will receive\n the online payments directly in your bank ''',
                      fontsize: 18.0,
                      w: FontWeight.w400,
                      top: 5.0),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: LinearPercentIndicator(
                      width: MediaQuery.of(context).size.width * 0.9,
                      lineHeight: 5,
                      percent: 0.40,
                      linearStrokeCap: LinearStrokeCap.roundAll,
                      backgroundColor: Colors.grey[200],
                      progressColor: Colors.blue,
                      animation: true,
                      restartAnimation: true,
                      animationDuration: 5000,
                    ),
                  ),
                  box(
                      text: '36,668 left out of 50,000',
                      fontsize: 15.0,
                      w: FontWeight.w400,
                      top: 0.0),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: ElevatedButton(
                        onPressed: () {},
                        child: const Text(
                          'Increase limit',
                          style: TextStyle(color: Colors.white),
                        )),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Column(
              children: [
                listTiles(
                    text: 'Default Method',
                    trailText: 'Online Payment',
                    icons: Icons.arrow_forward_ios,
                    iconsize: 20.0),
                listTiles(
                    text: 'Payment Profile',
                    trailText: 'Bank Account',
                    icons: Icons.arrow_forward_ios,
                    iconsize: 20.0),
                const Divider(),
                listTiles(
                    text: 'Payment Overview',
                    trailText: 'Life Time',
                    icons: Icons.keyboard_arrow_down,
                    iconsize: 30.0),
                SizedBox(
                  height: 130,
                  child: GridView(
                      children: [
                        cards(
                            text: 'AMOUND ON HOLD',
                            rupees: '\u{20B9}0',
                            backcolor: Colors.orange[600]),
                        cards(
                            text: 'AMOUND RECEIVED',
                            rupees: '\u{20B9}13,332',
                            backcolor: Colors.lightGreenAccent[400])
                      ],
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              mainAxisExtent: 110,
                              mainAxisSpacing: 10,
                              crossAxisSpacing: 10)),
                ),
                const Align(
                    alignment: Alignment.topLeft,
                    child: Text('Transactions',
                        style: TextStyle(
                            fontWeight: FontWeight.w400, fontSize: 15))),
                space(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    options(
                        text: 'On Hold',
                        backcolor: Colors.grey[600],
                        textclr: Colors.white),
                    options(
                        text: 'Payouts(15)',
                        backcolor: Colors.blue[600],
                        textclr: Colors.white),
                    options(
                        text: 'Refunds',
                        backcolor: Colors.grey[600],
                        textclr: Colors.white),
                  ],
                ),
                space(),
                poductList(
                    oraderno: 'Order #1643535',
                    date: 'Jul 12, 02,06. PM',
                    rate: '799',
                    image:
                        'https://i.pinimg.com/474x/6d/51/ed/6d51ed9a0ec3474b85a49ccbdc5b2e3e.jpg'),
                poductList(
                    oraderno: 'Order #1643535',
                    date: 'Aapr 12, 02,06. PM',
                    rate: '397',
                    image:
                        'https://i.pinimg.com/474x/6d/51/ed/6d51ed9a0ec3474b85a49ccbdc5b2e3e.jpg'),
                poductList(
                    oraderno: 'Order #1643535',
                    date: 'Jun 12, 02,06. PM',
                    rate: '689.44',
                    image:
                        'https://i.pinimg.com/474x/6d/51/ed/6d51ed9a0ec3474b85a49ccbdc5b2e3e.jpg'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
