import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {
  @override
  createState() {
    return _ContadorPageState();
  }
}

class _ContadorPageState extends State<ContadorPage> {
  final _styleText = new TextStyle(fontSize: 25);
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Stateful'),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Numero de clicks',
              style: _styleText,
            ),
            Text(
              '$_counter',
              style: _styleText,
            )
          ],
        )),
        floatingActionButton: _createButtons()
        //floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        );
  }

  Widget _createButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        SizedBox(
          width: 30,
        ),
        FloatingActionButton(
          onPressed: _reset,
          child: Icon(Icons.exposure_zero),
        ),
        Expanded(
          child: SizedBox(),
        ),
        FloatingActionButton(
          onPressed: _remove,
          child: Icon(Icons.remove),
        ),
        SizedBox(
          width: 5.0,
        ),
        FloatingActionButton(
          onPressed: _add,
          child: Icon(Icons.add),
        )
      ],
    );
  }

  void _add() {
    setState(() => _counter++);
  }

  void _remove() {
    setState(() => _counter--);
  }

  void _reset() {
    setState(() => _counter = 0);
  }
}
