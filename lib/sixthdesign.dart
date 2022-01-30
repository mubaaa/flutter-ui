import 'package:flutter/material.dart';

class SixthDesign extends StatelessWidget {
  const SixthDesign({ Key? key }) : super(key: key);
  @override
  Widget build(BuildContext context) {

 viewlist({image,heading,piece,rate,stockStatus}){

  return Container(
    color: Colors.white,
  width: MediaQuery.of(context).size.width,
  height: 140,
  child: Column(
    children: [
      Row(children: [
        Expanded(
          flex: 1,
          child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
            margin:const EdgeInsets.only(right: 5),
            height: 60,
            child: Image.network(image,fit: BoxFit.cover,),),
        ),
        Expanded(flex: 3,
          child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(heading,style:const TextStyle(fontSize: 20),),
             Text(piece),
                Text(rate),
                Text(stockStatus,style:const TextStyle(color: Colors.lightGreen),)
          ],
        ),),
        Expanded(flex: 1,
          child: 
        Column(
          children: [
             const Icon(Icons.more_vert_sharp,size: 30,),
                IconButton(onPressed: (){
                }, 
                icon:const Icon(Icons.toggle_on_outlined,color: Colors.blue,size: 30,),splashRadius:1.0,)
          ],
        ),)
      ],),
    const  Divider(),
      Container(
            color: Colors.white,
            height: 40,
            child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children:const [
              Icon(Icons.share),
              Text('Share Product')
            ],
          ),)
    ],
  ),
);
 }
spaceing(){
 return const SizedBox(height: 20,);
}

    return DefaultTabController(
      length: 2,
      initialIndex: 0,
      child: Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          centerTitle: true,
          title:const Text('Catalogue'),
          actions:const [
            Icon(Icons.search)
          ],
          bottom:const TabBar(tabs: [
            Tab(text:'Products',),
            Tab(text:'Catagories',)
          ],),
        ),
        body: TabBarView(children: [
          Tab(child: ListView(
            children: [
              viewlist(heading: 'Couch Potato | Women...',piece: '1 Piece',rate: '\u{20B9}799',stockStatus: 'In Stock',image: 'https://ak1.ostkcdn.com/wp-content/uploads/2017/03/How-to-Buy-Cheap-Clothes-hero.jpg'),
              spaceing(),
              viewlist(heading: 'Couch Potato | Women...',piece: '1 Piece',rate: '\u{20B9}799',stockStatus: 'In Stock',image: 'https://ak1.ostkcdn.com/wp-content/uploads/2017/03/How-to-Buy-Cheap-Clothes-hero.jpg'),
              spaceing(),
              viewlist(heading: 'Couch Potato | Women...',piece: '1 Piece',rate: '\u{20B9}799',stockStatus: 'In Stock',image: 'https://ak1.ostkcdn.com/wp-content/uploads/2017/03/How-to-Buy-Cheap-Clothes-hero.jpg'),
              spaceing(),
              viewlist(heading: 'Couch Potato | Women...',piece: '1 Piece',rate: '\u{20B9}799',stockStatus: 'In Stock',image: 'https://ak1.ostkcdn.com/wp-content/uploads/2017/03/How-to-Buy-Cheap-Clothes-hero.jpg'),
              spaceing(),
              viewlist(heading: 'Couch Potato | Women...',piece: '1 Piece',rate: '\u{20B9}799',stockStatus: 'In Stock',image: 'https://ak1.ostkcdn.com/wp-content/uploads/2017/03/How-to-Buy-Cheap-Clothes-hero.jpg'),
              spaceing(),
              viewlist(heading: 'Couch Potato | Women...',piece: '1 Piece',rate: '\u{20B9}799',stockStatus: 'In Stock',image: 'https://ak1.ostkcdn.com/wp-content/uploads/2017/03/How-to-Buy-Cheap-Clothes-hero.jpg'),

            ],
          ),),
          Tab(child: ListView(
            children:const [
            ],
          ),)
        ],),
      ),
    );
  }
}