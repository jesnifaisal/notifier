import 'package:flutter/material.dart';

final ValueNotifier<int> number = ValueNotifier(0);

class notifier extends StatelessWidget {
  const notifier({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[600],
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 250),
              child: FloatingActionButton(
                backgroundColor: Colors.blueGrey,
                onPressed: () {
                  number.value += 1;
                },
                child: Icon(Icons.add),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            ValueListenableBuilder(
              valueListenable: number,
              builder: (context, value, child) {
                return Text(
                  '$value',
                  style: TextStyle(fontSize: 40),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
