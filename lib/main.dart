import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Calculator(),
  ));
}

class Calculator extends StatefulWidget {
  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  int n1 = 0;
  int n2 = 0;
  int total = 0;

  void sum(int x, int y) {
    setState(() {
      total = x + y;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          'Calculator Application',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Calculator Application',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
              SizedBox(height: 60),
              TextField(
                keyboardType: TextInputType.number,
                onChanged: (temp) {
                  setState(() {
                    n1 = int.tryParse(temp) ?? 0;
                  });
                },
                decoration: InputDecoration(
                  hintText: 'First Number',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20),
              TextField(
                keyboardType: TextInputType.number,
                onChanged: (temp) {
                  setState(() {
                    n2 = int.tryParse(temp) ?? 0;
                  });
                },
                decoration: InputDecoration(
                  hintText: 'Second Number',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 40),
              ElevatedButton(
                onPressed: () {
                  sum(n1, n2);
                },
                child: Text('Calculate'),
              ),
              SizedBox(height: 20),
              Text(
                'Result is: $total',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
