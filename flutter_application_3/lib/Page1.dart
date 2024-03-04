import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Page 1"),
          leading: const Icon(Icons.menu),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
                child: Column(
              children: [
                const Text("Press the button to go to next page"),
                const SizedBox(
                  height: 30,
                ),
                ElevatedButton(onPressed: () {}, child: const Text("Page 2")),
              ],
            )),
          ],
        ),
      ),
    );
  }
}
