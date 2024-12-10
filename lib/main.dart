import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Ejemplo de Card')),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Card Normal
            const Card(
              // Para controlar borde alrededor del Card
              margin: EdgeInsets.all(20),

              // Define la altura de la sombra
              elevation: 10,

              child: SizedBox(
                width: 300,
                height: 100,
                child: Center(
                  child: Text("Card Elevated"),
                ),
              ),
            ),

            // Card Filled
            const Card.filled(
              child: SizedBox(
                width: 300,
                height: 100,
                child: Center(
                  child: Text("Card Filled"),
                ),
              ),
            ),

            // Card Outlined
            const Card.outlined(
              child: SizedBox(
                width: 300,
                height: 100,
                child: Center(
                  child: Text("Card Outlined"),
                ),
              ),
            ),

            // Card Clickeable
            Card(
              // Controla si los widgets hijos que sobresalen del borde de la tarjeta se recortan
              clipBehavior: Clip.hardEdge,
              child: InkWell(
                onTap: () {},
                child: const SizedBox(
                  width: 300,
                  height: 100,
                  child: Center(
                    child: Text("Card Clickeable"),
                  ),
                ),
              ),
            ),

            // Otro uso de Card
            Card(
              elevation: 3,
              margin: const EdgeInsets.symmetric(vertical: 8),
              child: ListTile(
                leading: const Icon(Icons.person),
                title: const Text('Usuario'),
                subtitle: const Text('Detalles del usuario '),
                trailing: IconButton(
                    onPressed: () {}, icon: const Icon(Icons.arrow_forward)),
              ),
            ),
          ],
        )),
      ),
    );
  }
}
