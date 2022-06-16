import 'package:alphabet/models/alphabetchar.dart';
import 'package:alphabet/models/alphabetrelatedmodel.dart';
import 'package:alphabet/models/dummydata.dart';
import 'package:flutter/material.dart';


class Showdata extends StatelessWidget {
  static const routename = 'showdata';

  Showdata({Key? key,}) : super(key: key);
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as AlphabetModel;
    final AlphabetRelated d = DUMMY_LETTERS.firstWhere((element) => element.id == args.alphabet);
   
    return Scaffold(
      appBar: AppBar(title: const Text('Details'),),
      body: Column(
       children: [
         Expanded(
           flex: 4,child: Container(
             child: Center(child: Text(args.alphabet,style: TextStyle(fontSize: 40),)),
           )),
         Expanded(
           flex: 2
           ,child: ListView(
             scrollDirection: Axis.horizontal,
             children: d.letters.map((e) => ListCards(item:e)).toList(),
           )),
       ],
      ),
    );
  }
}

class ListCards extends StatelessWidget {
 final  item ;
  ListCards({Key? key,required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16),
      color: Colors.amber,
      width: 200,
      child: Center(child: Text(item,style: TextStyle(fontSize: 30),)),
    );
  }
}