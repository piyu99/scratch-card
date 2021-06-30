import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:scratch_card/scratchCard.dart';

class Cards extends StatefulWidget {
  @override
  _CardsState createState() => _CardsState();
}

class _CardsState extends State<Cards> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: GridView.count(crossAxisCount: 2,
        children: [
          Card(
            child: InitialCard(
                color: Colors.red,
              hero: '1',
              ),
            ),
          Card(
            child: InitialCard(
              color: Colors.purpleAccent,
              hero: '2',
            ),
          ),
          Card(
            child: InitialCard(
              color: Colors.greenAccent,
              hero: '3',
            ),
          ),
          Card(
            child: InitialCard(
              color: Colors.deepOrange,
              hero: '4',
            ),
          ),
          Card(
            child: InitialCard(
              color: Colors.green,
              hero: '5',
            ),
          ),
          Card(
            child: InitialCard(
              color: Colors.indigo,
              hero: '6',
            ),
          ),
          Card(
            child: InitialCard(
              color: Colors.yellow,
              hero: '7',
            ),
          ),
          Card(
            child: InitialCard(
              color: Colors.brown,
              hero: '8',
            ),
          ),
        ],)
    );
  }
}

class InitialCard extends StatelessWidget {


   InitialCard({
    this.color,
     this.hero,
    Key key,
  }) : super(key: key);

  Color color;
  String hero;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=> ScratchCard(color,hero)));
      },
      child: Hero(
        tag: hero,
        child: Card(
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  color,
                  Colors.white,
                ]
              )
            ),
            child: Center(child: Text('Scratch Me!!',
            style: TextStyle(
              fontWeight: FontWeight.bold
            ),)),
          ),
        ),
      ),
    );
  }
}
