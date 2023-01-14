import 'dart:math';
import 'package:flutter/material.dart';

void main(List<String> args) {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        appBar: AppBar(
        title: const Text('Decision/Magic Ball'),
        backgroundColor: Colors.amber,
      ),
      body: const MagicPage(),
      ),
    ),
  );
}
class MagicPage extends StatefulWidget {
  const MagicPage({super.key});

  @override
  State<MagicPage> createState() => _MagicPageState();
}

class _MagicPageState extends State<MagicPage> {
  int ansnumber=1;
  @override
  Widget build(BuildContext context) {
    return Column(
      
      children: [
        const Expanded(
          flex: 1,
          child: Center(child: Text(
            'Ask me ANYTHING:',
            style: TextStyle(
              color: Colors.white,
              fontSize: 25,
            ),
          ),
          ),
          ),
        Expanded(
          flex: 6,
          
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextButton(
              onPressed: () {
                setState(() {
                   ansnumber=Random().nextInt(5)+1;
                });
              },
              child: Image.asset('images/ball$ansnumber.png'),
              ),
          ),
        
        ),
        
      ],
    );
  }
}