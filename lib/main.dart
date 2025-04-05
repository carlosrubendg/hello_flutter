import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'LDSW 3.4 Utilización de widgets',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Widgets en Flutter'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              // TEXT Widget
              const Text(
                'Este es un widget de texto',
                style: TextStyle(fontSize: 20),
              ),

              const SizedBox(height: 20),

              // ROW Widget
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(Icons.star, color: Colors.orange),
                  SizedBox(width: 10),
                  Text('Fila con íconos y texto'),
                ],
              ),

              const SizedBox(height: 20),

              // STACK Widget
              Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.blue,
                  ),
                  const Text('Texto sobre container', style: TextStyle(color: Colors.white)),
                ],
              ),

              const SizedBox(height: 20),

              // CONTAINER Widget
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.green[100],
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.green),
                ),
                child: const Text('Este es un Container con estilo'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
