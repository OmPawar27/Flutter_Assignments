import 'package:flutter/material.dart';
// import 'package:flutter_application_2/Assignment1.dart';
import 'Assignment1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Assignment3(),
    );
  }
}

class Assignment3 extends StatefulWidget {
  const Assignment3({super.key});

  @override
  State<StatefulWidget> createState() => _Assignment3State();
}

class _Assignment3State extends State {
  @override
  void initState() {
    super.initState();
    print("initState called");
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print("didChangeDependencies called");
  }

  @override
  void didUpdateWidget(covariant Assignment3 oldwidget) {
    super.didUpdateWidget(oldwidget);
    print("didUpdateWidget called");
  }

  @override
  void ressemble() {
    super.reassemble();
    print("ressemble called");
  }

  @override
  void deactivate() {
    super.deactivate();
    print("deactivate called");
  }

  @override
  void activate() {
    super.activate();
    print("activate called");
  }

  int? selectedIndex = 0;

  final List<String> imageList = [
    "https://live.staticflickr.com/8495/8296581995_e4f8fd5088_z.jpg",
    "https://live.staticflickr.com/8214/8287306025_05afa1510c_z.jpg",
    "https://live.staticflickr.com/8064/8249753855_bbdbcd5344_z.jpg"
  ];

  void showNextImage() {
    setState(() {
      if (selectedIndex! < imageList.length - 1) {
        selectedIndex = selectedIndex! + 1;
      } else {
        selectedIndex = 0;
      }
    });
  }

  bool flag = true;

  @override
  Widget build(BuildContext context) {
    return (flag)
        ? Scaffold(
            appBar: AppBar(
              title: const Text("Display Images"),
            ),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.network(
                    imageList[selectedIndex!],
                    height: 200,
                    width: 200,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        showNextImage();
                      },
                      child: const Text("Next Image")),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          selectedIndex = 0;
                        });
                      },
                      child: const Text("Reset")),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          flag = false;
                        });
                      },
                      child: const Text("Next Scaffold")),
                ],
              ),
            ),
          )
        : Scaffold(
            appBar: AppBar(
              title: const Text("Second Scaffold"),
            ),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("This is the second scaffold"),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        flag = true;
                      });
                    },
                    child: const Text("Previous Scaffold"),
                  ),
                ],
              ),
            ),
          );
  }
}
