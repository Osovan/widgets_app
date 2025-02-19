import 'package:flutter/material.dart';

class ProgressScreen extends StatelessWidget {
  static const name = 'progress_screen';

  const ProgressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Progress Indicators'),
      ),
      body: const _ProgressView(),
    );
  }
}

class _ProgressView extends StatelessWidget {
  const _ProgressView();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: const [
          SizedBox(height: 30),
          Text('Circula progress indicator'),
          SizedBox(height: 10),
          CircularProgressIndicator(
              strokeWidth: 2, backgroundColor: Colors.black12),
          SizedBox(height: 20),
          Text('Circular y Linear controlado'),
          SizedBox(height: 10),
          _ControlledProgresIndicator(),
        ],
      ),
    );
  }
}

class _ControlledProgresIndicator extends StatelessWidget {
  const _ControlledProgresIndicator();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      //es para construir en tiempo de ejecución
      //stream.periodic, lanza lo que sea cada x tiempo que indiquemos
      stream: Stream.periodic(const Duration(milliseconds: 300), (value) {
        return (value * 2) / 100; // 0.0, 1.0
        //takewhile lo hace mientras condición
      }).takeWhile((value) => value < 100),
      builder: (context, snapshot) {
        //al principio, si no hay valor (es nulo), empieza en 0
        final progressValue = snapshot.data ?? 0;

        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircularProgressIndicator(
                value: progressValue,
                strokeWidth: 2,
                backgroundColor: Colors.black12,
              ),
              const SizedBox(
                width: 20,
              ),
              Expanded(child: LinearProgressIndicator(value: progressValue)),
            ],
          ),
        );
      },
    );
  }
}
