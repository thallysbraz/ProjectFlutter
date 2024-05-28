import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key ? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key ? key}) : super(key: key);

  void decrement() {
    print("Decrement");
  }

  void increment(){
    print('Incrementou');
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.red,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Pode Entrar!',
              style: TextStyle(
            fontSize: 30,
            color: Colors.white,
            fontWeight: FontWeight.w700,
            )
          ),
          const Text(
            '0',
            style: TextStyle(
            fontSize: 100,
            color: Colors.white,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                  onPressed: decrement,
                  child: Text(
                    'Saiu',
                    style:
                      TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                    ),
                  ),
              ),
              TextButton(
                onPressed: increment,
                child: Text(
                  'Entrou',
                  style: TextStyle(
                      color: Colors.black,
                    fontSize: 16,
                    ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

