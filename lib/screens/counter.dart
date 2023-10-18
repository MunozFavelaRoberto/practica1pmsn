import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int _n = 0;
  int _amt = 0;

  void add() {
    setState(() {
      _n++;
      _amt = _amt + 10;
    });
  }

  void minus() {
    setState(() {
      if (_n != 0) _n--;
      _amt = _amt - 10;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
          width: 130,
          decoration: BoxDecoration(
              color: Colors.blueGrey[50],
              borderRadius: BorderRadius.circular(20)),
          child: Row(
            children: <Widget>[
              IconButton(
                icon: const Icon(
                  Icons.add,
                  color: Colors.black,
                ),
                onPressed: (){
                  add();
                }),
                Text('$_n',
                  style: TextStyle(fontSize: 25),
                ),
                IconButton(
                  icon: const Icon(
                    Icons.remove,
                    color: Colors.black,
                  ),
                  onPressed: (){
                    minus();
                  }),
            ],
            
          ),
        )
      ],
    );
  }
}