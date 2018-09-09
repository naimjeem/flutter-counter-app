import 'package:flutter/material.dart';

class MakeItRain extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // implement createState
    return MakeItRainState();
  }

}

class MakeItRainState extends State<MakeItRain> {
  int _moneyCounter = 100;

  void _rainMoney() {
    setState(() {
      _moneyCounter = _moneyCounter + 100;
    });
  }

  @override
  Widget build(BuildContext context) {
    // implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Make It Rain!'),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Center(
              child: Text('Want To Get Money?',
                style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                    fontSize: 29.9
                ),
              )
            ),

            Expanded(
              child: Center(
                child: Text('\$$_moneyCounter',
                  style: TextStyle(
                    color: _moneyCounter > 7000 ? Colors.green : Colors.blue,
                    fontSize: 46.6,
                    fontWeight: FontWeight.w800
                  ),
                ),
              ),
            ),
            
            Expanded(
              child: Center(
                child: FlatButton(
                  onPressed: _rainMoney,
                  child: Text('Let it Gain...',
                    style: TextStyle(
                      fontSize: 19.9
                    ),
                  )
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}