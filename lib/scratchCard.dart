import 'package:flutter/material.dart';
import 'package:scratcher/scratcher.dart';

class ScratchCard extends StatefulWidget {

  ScratchCard(this.color,this.hero);

  Color color;
  String hero;

  @override
  _ScratchCardState createState() => _ScratchCardState();
}

class _ScratchCardState extends State<ScratchCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Hero(
        tag: widget.hero,
        child: AlertDialog(
          backgroundColor: widget.color,
          title: Align(
            alignment: Alignment.center,
            child: Text('Scratch Me !!'),
          ),
          content: Scratcher(
            accuracy: ScratchAccuracy.low,
            color: widget.color,
            brushSize: 50,
            child: Container(
              height: 300,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [
                        widget.color,
                        Colors.white,
                      ]
                  )
              ),
              child: Center(child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('YOU HAVE WON!!',
                    style: TextStyle(
                        fontWeight: FontWeight.bold
                    ),),
                  Text('Rs. 200',
                    style: TextStyle(
                      fontSize: 40,
                        fontWeight: FontWeight.bold
                    ),),
                ],
              )),
            ),
          ),
        ),
      ),
    );
  }
}
