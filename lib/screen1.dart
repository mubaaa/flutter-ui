import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'main.dart';

class ScreenOne extends StatelessWidget {
  Widget listtile({leadingIcon, titleText, trailingIcon, color}) {
    return ListTile(
      leading: Icon(leadingIcon),
      title: Text(titleText),
      trailing: Icon(
        trailingIcon,
        color: color,
      ),
    );
  }

  const ScreenOne({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.arrow_back),
          title: const Text('Additional Information'),
          centerTitle: true,
        ),
        body: Column(
          children: [
            listtile(
              leadingIcon: Icons.share,
              titleText: 'Share Dukaan App',
              trailingIcon: Icons.arrow_forward_ios_rounded,
            ),
            listtile(
              leadingIcon: Icons.messenger_outline,
              titleText: 'Change Language',
              trailingIcon: Icons.arrow_forward_ios_rounded,
            ),
            const ListTile(
              leading: FaIcon(FontAwesomeIcons.whatsapp,color: Colors.green,),
              title: Text('Whatsapp Chat Support'),
              trailing: Icon(
                Icons.toggle_on_outlined,
                color: Colors.blue,
              ),
            ),
            listtile(
              leadingIcon: Icons.lock,
              titleText: 'Privacy Policy',
            ),
            listtile(
              leadingIcon: Icons.star_border,
              titleText: 'Rate Us',
            ),
            listtile(
              leadingIcon: Icons.logout,
              titleText: 'Sign out',
            ),
            const Expanded(
                child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Text('Version \n 2.4.2'))),
          ],
        ),
     );
  }
}
