import 'package:flutter/material.dart';

class EntradaTempo extends StatelessWidget {
  const EntradaTempo({
    super.key,
    required this.titulo,
    required this.valor,
    this.incremento,
    this.decremento,
  });

  final String titulo;
  final int valor;
  final void Function()? incremento;
  final void Function()? decremento;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          titulo,
          style: const TextStyle(
            fontSize: 25,
          ),
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: decremento,
              style: ElevatedButton.styleFrom(
                shape: const CircleBorder(),
                padding: const EdgeInsets.all(15),
                backgroundColor: Colors.red,
              ),
              child: const Icon(
                Icons.arrow_downward,
                color: Colors.white,
              ),
            ),
            Text('$valor min', style: const TextStyle(fontSize: 18)),
            ElevatedButton(
              onPressed: incremento,
              style: ElevatedButton.styleFrom(
                shape: const CircleBorder(),
                padding: const EdgeInsets.all(15),
                backgroundColor: Colors.red,
              ),
              child: const Icon(
                Icons.arrow_upward,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
