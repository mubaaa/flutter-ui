import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class FourthPage extends StatelessWidget {
  const FourthPage({Key? key}) : super(key: key);

  listtiles({icon, heading, sub}) {
    return ListTile(
      leading: Icon(
        icon,size: 35,
        color: Colors.blue[400],
      ),
      title: Text(
        heading,
        style: const TextStyle(fontWeight: FontWeight.w600,fontSize: 20),
      ),
      subtitle: Text(sub),
    );
  }

  @override
  Widget build(BuildContext context) {
    Widget continer({height, color}) {
      return Container(
        height: height,
        width: MediaQuery.of(context).size.width,
        color: color,
      );
    }

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: const Text('Dukan Premium'),
        leading: const Icon(Icons.arrow_back),
      ),
      body: ListView(
        children: [
          Stack(
            children: [
              continer(height: 270.0, color: Colors.white),
              continer(height: 150.0, color: Colors.blue),
              Positioned(
                top: 10,
                left: 30,
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.grey)),
                  height: 250,
                  width: 350,
                  child: Column(
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        height: 100,
                        child: const Center(
                            child: Image(width: 450,
                            
                                image: AssetImage(r'assets\images\logo.png'))),
                      ),
                      const Text(
                        'Get Dukkan premium for just\n \u{20B9}4,999/year',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                          'All the advance features for scalling your \nbusiness',
                          textAlign: TextAlign.center,style: TextStyle(
                            fontSize: 18))
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: const Text(
              'Features',
              style: TextStyle(fontWeight: FontWeight.w500,fontSize: 18),
            ),
          ),
          listtiles(
              icon: Icons.language,
              heading: 'Custom domain name',
              sub:
                  'Get your own custome domain and buid\n your brand on the internet'),
          listtiles(
              icon: Icons.verified_outlined,
              heading: 'Verified seller badge',
              sub:
                  'Get green verified badge under your\n store name and build trust'),
          listtiles(
              icon: Icons.laptop,
              heading: 'Dukkan for PC',
              sub:
                  'Access all exclusive premium \nfeatures on Dukkan for PC'),
          listtiles(
              icon: Icons.headphones,
              heading: 'Priority support',
              sub:
                  'Get your question resolve with our\n priority customer support'),
          const Divider(
            thickness: 5,
          ),
         SizedBox(height: 40,
            child: Column(
              children:const [
                Text('What is Dukkan premium',style: TextStyle(fontSize: 20),),
              ],
            ),
          ),
       const Padding(
          padding: EdgeInsets.only(left: 10,right: 10),
          child:  SizedBox(
              child: Image(image: AssetImage(r'assets\images\Screenshot (24).png')),
            ),
        )
        ],
      ),
    );
  }
}
