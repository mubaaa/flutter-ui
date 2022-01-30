import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FifthDesign extends StatelessWidget {
  const FifthDesign({ Key? key }) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading:const Icon(Icons.arrow_back),
        centerTitle: true,
        title: const Text('Order #1688068'),),
        body: Padding(
          padding: const EdgeInsets.only(left: 10,right: 10),
          child: ListView(children: [
            ListTile(
              leading:const Text('May 31, 05:42 PM'),
              trailing: Wrap(children: [
                Container(
                  margin:const EdgeInsets.only(top: 3,right: 3),
                  width: 10,
                  height: 10,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.lightGreenAccent.shade700),
                ),
              const  Text('Deliverd')
              ],),
            ),
           const Divider(thickness: 1,),
            ListTile(
              leading:const Text('1 ITEM'),
              trailing: Wrap(children:const [
                Icon(Icons.receipt,color: Colors.blueAccent,),
               Text('Reciept')
              ],),
            ),
            ListTile(
              leading:const Image(image: NetworkImage('https://i.pinimg.com/474x/6d/51/ed/6d51ed9a0ec3474b85a49ccbdc5b2e3e.jpg')),
              title: const Text('Explore | Men | Navy Blue'),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                 const Text('1 Piece'),
                  const Text('Size: XL'),
                  Wrap(children: [
                    Container(
                      margin:const EdgeInsets.only(right: 5),
                      width: 18,
                      height: 18,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),border: Border.all(color: Colors.blue),color: Colors.grey),
                      child:const Center(child: Text('1'))
                    ),
                 const  Text('x \u{20B9}799')
                  ],)
                ],
              ),
              trailing: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.end,
                children:const [
                   Text('\u{20B9}799'),
                ],
              ),
            ),
            const Divider(thickness: 1,),

            ListTile(
              leading: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children:const [
                  Text('Item count',style: TextStyle(fontSize: 15),),
                  Text('Delivery',style: TextStyle(fontSize: 15)),
                  Text('Grand Total',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),)
                ],
              ),

              trailing: Column(
                children: [
                 const Text('\u{20B9}799'),
                  Text('Free',style: TextStyle(color:Colors.lightGreenAccent.shade700),),
                  const Text('\u{20B9}799'),
                ],
              ),
            ),
             const Divider(thickness: 1,),
             ListTile(
               leading:const Text('CUSTOMER DETAILS',style: TextStyle(color: Colors.grey,fontSize: 16)),
               trailing: Wrap(children:const [Icon(Icons.share_rounded,color: Colors.blue,),
               Text('SHARE',style: TextStyle(color: Colors.blue),)
               ],),
             ),ListTile(
               leading: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children:const [
                   SizedBox(height: 4,),
                   Text('Deepa',style: TextStyle(fontSize: 17)),
                   Text('+91-7892000489',style: TextStyle(fontSize: 17))
                 ],
               ),
               trailing: Wrap(
                 children:const [
                   Icon(Icons.phone,color: Colors.blue,),
                   SizedBox(width: 10,),
                   FaIcon(FontAwesomeIcons.whatsapp,color: Colors.green,)
                 ],
               ),
             ),
             Padding(
               padding: const EdgeInsets.all(10.0),
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                  const Text('Address',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400)),
                   const Text('D 1101 Chartrated Baverly\nHills,Subramanyapura P.O',style: TextStyle(fontSize: 17)),
                   const SizedBox(height: 10,),
                   Row(
                     children: [
                       Expanded(
                         child: Column(children:const [
                           Text('City',style: TextStyle(fontSize: 17)),
                           Text('Bangalore',style: TextStyle(fontSize: 17))
                         ],),
                       ),
                       Expanded(
                         child: Column(children:const [
                           Text('Pincode',style: TextStyle(fontSize: 17)),
                           Text('560061',style: TextStyle(fontSize: 17))
                         ],),
                       ),
                     const  Expanded(child:Text(''))
                     ],
                   )
                 ],
               ),
             )
             

          ],),
        ),
    );
  }
}