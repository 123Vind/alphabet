import 'package:alphabet/models/alphabetchar.dart';
import 'package:alphabet/models/dummydata.dart';
import 'package:alphabet/showdata.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),

      body: GridView.count(crossAxisCount: 4,
      mainAxisSpacing: 8,
      crossAxisSpacing: 8,
      children: DUMMY_DATA.map((e) => CardHolder(data: e,)).toList(),
        ),
    );
  }
}

class CardHolder extends StatelessWidget {
  final AlphabetModel data;
  const CardHolder({Key? key,required this.data}) : super(key: key);

clickname(BuildContext ctx){
  Navigator.of(ctx).pushNamed(Showdata.routename,arguments: data);
}

  @override
  Widget build(BuildContext context) {

    return InkWell(
      onTap: (){
        clickname(context);
      },
      child: Container(
        

        margin: EdgeInsets.all(16),
  
        decoration: BoxDecoration(
          color: Colors.amber,
          borderRadius: BorderRadius.circular(16),
          boxShadow:const [
            BoxShadow(color: Colors.grey,
            offset: Offset(0.5,0.5),
            blurRadius: 4,
            spreadRadius: 1
            )
          ]
        ),
        child: Center(child: Text(data.alphabet,style: TextStyle(fontSize: 30),)),
      ),
    );
  }
}
