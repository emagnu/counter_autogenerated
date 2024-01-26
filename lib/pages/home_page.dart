//   //
//  Import LIBRARIES
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
//  Import FILES
import '../providers/counter_provider.dart';
//  PARTS
//  PROVIDERS

//  //

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final counter = ref.watch(counterProviderProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Center(
        // child: Text('123'),
        child: Text(
          "Press the buttons to change the counter \n$counter",
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      floatingActionButton: ButtonBar(
        children: <Widget>[
          FloatingActionButton(
            heroTag: 'decrement',
            onPressed: () {
              // counter.decrement();
              ref.read(counterProviderProvider.notifier).decrement();
              debugPrint("$counter.toString()");
            },
            child: const Icon(Icons.remove),
          ),
          FloatingActionButton(
            heroTag: 'increment',
            onPressed: () {
              // counter.increment();
              ref.read(counterProviderProvider.notifier).increment();
              debugPrint("$counter.toString()");
            },
            child: const Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
