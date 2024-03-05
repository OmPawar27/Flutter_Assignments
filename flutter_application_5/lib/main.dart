import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  static ThemeMode _themeMode = ThemeMode.light;

  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: _themeMode,
      debugShowCheckedModeBanner: false,
      home: const Assignment5Stateful(),
    );
  }

  static void setThemeMode(ThemeMode mode) {
    _themeMode = mode;
  }
}

final ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  // Define other light theme properties
);

final ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  // Define other dark theme properties
);

class Assignment5Stateful extends StatefulWidget {
  const Assignment5Stateful({super.key});

  @override
  State<StatefulWidget> createState() => Assignment5State();
}

class Assignment5State extends State<Assignment5Stateful> {
  bool isDarkMode = true;

  bool like1 = false;
  bool like2 = false;
  bool like3 = false;

  bool bookmark1 = false;
  bool bookmark2 = false;
  bool bookmark3 = false;

  bool homeIconActive = true;
  bool searchIconActive = false;
  bool addPostIconActive = false;

  int? firstPostLike = 531;
  int? secondPostLike = 670;
  int? thirdPostLike = 567;

  void onClick(IconData icon) {
    if (icon == Icons.home_outlined) {
      setState(() {
        homeIconActive = true;
        searchIconActive = false;
      });
    } else if (icon == Icons.search) {
      setState(() {
        searchIconActive = true;
        homeIconActive = false;
      });
    }
  }

  final url = 'lib/images/img1.jpg';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          "Instagram",
          style: TextStyle(
            fontSize: 30,
            fontStyle: FontStyle.italic,
            color: Colors.black,
          ),
        ),
        actions: [
          // ElevatedButton(
          //     onPressed: () {
          //       setState(() {
          //         if (isDarkMode) {
          //           MainApp.setThemeMode(ThemeMode.dark);
          //           isDarkMode = !isDarkMode;
          //         } else {
          //           MainApp.setThemeMode(ThemeMode.light);
          //           isDarkMode = !isDarkMode;
          //         }
          //       });
          //     },
          //     child: const Text("helo")),
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.favorite_border),
              color: Colors.black),

          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.message_outlined),
              color: Colors.black),
        ],
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        // ---> Outer Scroll View
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            SingleChildScrollView(
              // ------> Story Section
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  //-----------------------------------
                  const SizedBox(
                    width: 15,
                  ),
                  Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.redAccent, width: 3),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(4),
                          child: ClipOval(
                            child: Image.asset(
                              'assets/images/om.jpg',
                              height: 60,
                              width: 60,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      const Text("Your story"),
                      const SizedBox(
                        height: 8,
                      ),
                    ],
                  ),
                  //---------------------------------------------
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.redAccent, width: 3),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(4),
                          child: ClipOval(
                            child: Image.asset(
                              'assets/images/umer.jpg',
                              height: 60,
                              width: 60,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      const Text("_umr_"),
                      const SizedBox(
                        height: 8,
                      ),
                    ],
                  ),
                  //---------------------------------------------
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.redAccent, width: 3),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(4),
                          child: ClipOval(
                            child: Image.asset(
                              'assets/images/rushi.png',
                              height: 60,
                              width: 60,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      const Text("_rdt____"),
                      const SizedBox(
                        height: 8,
                      ),
                    ],
                  ),
                  //---------------------------------------------
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.redAccent, width: 3),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(4),
                          child: ClipOval(
                            child: Image.asset(
                              'assets/images/sub.jpg',
                              height: 60,
                              width: 60,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 0,
                      ),
                      const Text("سبحان♠️"),
                      const SizedBox(
                        height: 8,
                      ),
                    ],
                  ),
                  //---------------------------------------------
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.redAccent, width: 3),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(4),
                          child: ClipOval(
                            child: Image.asset(
                              'assets/images/harsh.png',
                              height: 60,
                              width: 60,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      const Text("हर्षवर्धन"),
                      const SizedBox(
                        height: 8,
                      ),
                    ],
                  ),
                  //---------------------------------------------
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.redAccent, width: 3),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(4),
                          child: ClipOval(
                            child: Image.asset(
                              'assets/images/suyash.png',
                              height: 60,
                              width: 60,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 0,
                      ),
                      const Text("SUYASH MORE"),
                      const SizedBox(
                        height: 8,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            //-------------------End of Story Section ---------------------
            // ---------------- Pic 1 ------------------
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const SizedBox(
                      width: 20,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.redAccent, width: 2),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(3),
                        child: ClipOval(
                          child: Image.asset(
                            'assets/images/harsh.png',
                            height: 30,
                            width: 30,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Text(
                      "हर्षवर्धन",
                      style: TextStyle(fontSize: 17),
                    ),
                    const Spacer(
                      flex: 1,
                    ),
                    IconButton(
                        onPressed: () {}, icon: const Icon(Icons.more_vert)),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  // color: Colors.black,
                  child: Image.asset(
                    //"https://images.pexels.com/photos/2096543/pexels-photo-2096543.jpeg?auto=compress&cs=tinysrgb&w=600",
                    //"https://media.istockphoto.com/id/1435781294/photo/mid-adult-smiling-latin-businessman-in-office-using-credit-card-to-pay-online.webp?b=1&s=170667a&w=0&k=20&c=xYpKTl1AanlPZfFRFavrHzdDSCizAFNNpur98KKxzrI=",
                    'assets/images/harsh.png',
                    height: 300,
                    width: double.infinity,
                  ),
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        setState(() {
                          if (like1) {
                            like1 = false;
                            firstPostLike = firstPostLike! - 1;
                          } else {
                            like1 = true;
                            firstPostLike = firstPostLike! + 1;
                          }
                        });
                      },
                      icon: !like1
                          ? const Icon(Icons.favorite_border)
                          : const Icon(
                              Icons.favorite_rounded,
                              color: Colors.red,
                            ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.comment_outlined,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.send,
                      ),
                    ),
                    const Spacer(
                      flex: 1,
                    ),
                    IconButton(
                      onPressed: () {
                        setState(() {
                          bookmark1 = !bookmark1;
                        });
                      },
                      icon: bookmark1
                          ? const Icon(Icons.bookmark_rounded)
                          : const Icon(Icons.bookmark_border),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    "Liked by _om_pawar_ and $firstPostLike others",
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    "_.𝐡𝐚𝐫𝐬𝐡._.𝐧𝐢𝐤𝐚𝐦._ Life moves pretty fast. If you don't stop and look around once in a while you could miss it...",
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
              ],
            ),
            // ---------------- Pic 2 ------------------
            Row(
              children: [
                const SizedBox(
                  width: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.redAccent, width: 2),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(3),
                    child: ClipOval(
                      child: Image.asset(
                        'assets/images/sub.jpg',
                        height: 30,
                        width: 30,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                const Text(
                  "سبحان♠️",
                  style: TextStyle(fontSize: 17),
                ),
                const Spacer(
                  flex: 1,
                ),
                IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert)),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  // color: Colors.black,
                  child: Image.asset(
                    //"https://images.pexels.com/photos/2096543/pexels-photo-2096543.jpeg?auto=compress&cs=tinysrgb&w=600",
                    //"https://cdn-icons-png.flaticon.com/512/174/174855.png",
                    //'https://media.istockphoto.com/id/1500285927/photo/young-woman-a-university-student-studying-online.webp?b=1&s=170667a&w=0&k=20&c=w6oDn8-ru4jZhnnEt8AI6KdlgCJIgaaEZ4IMV50DnsQ=',
                    'assets/images/sub.jpg',
                    height: 300,
                    width: double.infinity,
                  ),
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        setState(() {
                          if (like2) {
                            like2 = false;
                            secondPostLike = secondPostLike! - 1;
                          } else {
                            like2 = true;
                            secondPostLike = secondPostLike! + 1;
                          }
                        });
                      },
                      icon: !like2
                          ? const Icon(Icons.favorite_border)
                          : const Icon(
                              Icons.favorite_rounded,
                              color: Colors.red,
                            ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.comment_outlined,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.send,
                      ),
                    ),
                    const Spacer(
                      flex: 1,
                    ),
                    IconButton(
                      onPressed: () {
                        setState(() {
                          bookmark2 = !bookmark2;
                        });
                      },
                      icon: bookmark2
                          ? const Icon(Icons.bookmark_rounded)
                          : const Icon(Icons.bookmark_border),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    "Liked by _om_pawar_ and $secondPostLike others",
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    "𝐬𝐮𝐛𝐡𝐚𝐚𝐧𝐬𝐣𝟕𝟔 Kya bolti public....",
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
              ],
            ),
            // ---------------- Pic 3 ------------------
            Row(
              children: [
                const SizedBox(
                  width: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.redAccent, width: 2),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(3),
                    child: ClipOval(
                      child: Image.asset(
                        'assets/images/rushi.png',
                        height: 30,
                        width: 30,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                const Text(
                  "_rdt____",
                  style: TextStyle(fontSize: 17),
                ),
                const Spacer(
                  flex: 1,
                ),
                IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert)),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  // color: Colors.black,
                  child: Image.asset(
                    //"https://images.pexels.com/photos/2096543/pexels-photo-2096543.jpeg?auto=compress&cs=tinysrgb&w=600",
                    //"https://cdn-icons-png.flaticon.com/512/174/174855.png",
                    //'https://media.istockphoto.com/id/1438185814/photo/college-student-asian-man-and-studying-on-laptop-at-campus-research-and-education-test-exam.webp?b=1&s=170667a&w=0&k=20&c=GB278ll5DUQDJx4WnhrD-DCwjjjfTfyVCB7jmGz5fmQ=',
                    'assets/images/rushi.png',
                    height: 300,
                    width: double.infinity,
                  ),
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        setState(() {
                          if (like3) {
                            like3 = false;
                            thirdPostLike = thirdPostLike! - 1;
                          } else {
                            like3 = true;
                            thirdPostLike = thirdPostLike! + 1;
                          }
                        });
                      },
                      icon: !like3
                          ? const Icon(Icons.favorite_border)
                          : const Icon(
                              Icons.favorite_rounded,
                              color: Colors.red,
                            ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.comment_outlined,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.send,
                      ),
                    ),
                    const Spacer(
                      flex: 1,
                    ),
                    IconButton(
                      onPressed: () {
                        setState(() {
                          bookmark3 = !bookmark3;
                        });
                      },
                      icon: bookmark3
                          ? const Icon(Icons.bookmark_rounded)
                          : const Icon(Icons.bookmark_border),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    "Liked by _om_pawar_ and $thirdPostLike others",
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    "_𝐫𝐝𝐭____ You are enough for yourself",
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
              ],
            ),
            // ----------------- Pic 4 --------------------
            Row(
              children: [
                const SizedBox(
                  width: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.redAccent, width: 2),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(3),
                    child: ClipOval(
                      child: Image.asset(
                        'assets/images/umer.jpg',
                        height: 30,
                        width: 30,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                const Text(
                  "_umr_",
                  style: TextStyle(fontSize: 17),
                ),
                const Spacer(
                  flex: 1,
                ),
                IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert)),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  // color: Colors.black,
                  child: Image.asset(
                    //"https://images.pexels.com/photos/2096543/pexels-photo-2096543.jpeg?auto=compress&cs=tinysrgb&w=600",
                    //"https://cdn-icons-png.flaticon.com/512/174/174855.png",
                    //'https://media.istockphoto.com/id/1438185814/photo/college-student-asian-man-and-studying-on-laptop-at-campus-research-and-education-test-exam.webp?b=1&s=170667a&w=0&k=20&c=GB278ll5DUQDJx4WnhrD-DCwjjjfTfyVCB7jmGz5fmQ=',
                    "assets/images/umer.jpg",
                    height: 300,
                    width: double.infinity,
                  ),
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        setState(() {
                          if (like3) {
                            like3 = false;
                            thirdPostLike = thirdPostLike! - 1;
                          } else {
                            like3 = true;
                            thirdPostLike = thirdPostLike! + 1;
                          }
                        });
                      },
                      icon: !like3
                          ? const Icon(Icons.favorite_border)
                          : const Icon(
                              Icons.favorite_rounded,
                              color: Colors.red,
                            ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.comment_outlined,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.send,
                      ),
                    ),
                    const Spacer(
                      flex: 1,
                    ),
                    IconButton(
                      onPressed: () {
                        setState(() {
                          bookmark3 = !bookmark3;
                        });
                      },
                      icon: bookmark3
                          ? const Icon(Icons.bookmark_rounded)
                          : const Icon(Icons.bookmark_border),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    "Liked by _om_pawar_ and $thirdPostLike others",
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    "_𝐮𝐦𝐫_ Sania yaar ab mazak nahi laut aao :(",
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
              ],
            ),
            // ------------------ Pic 5 ------------------
            Row(
              children: [
                const SizedBox(
                  width: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.redAccent, width: 2),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(3),
                    child: ClipOval(
                      child: Image.asset(
                        'assets/images/suyash.png',
                        height: 30,
                        width: 30,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                const Text(
                  "SUYASH MORE",
                  style: TextStyle(fontSize: 17),
                ),
                const Spacer(
                  flex: 1,
                ),
                IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert)),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  // color: Colors.black,
                  child: Image.asset(
                    //"https://images.pexels.com/photos/2096543/pexels-photo-2096543.jpeg?auto=compress&cs=tinysrgb&w=600",
                    //"https://cdn-icons-png.flaticon.com/512/174/174855.png",
                    //'https://media.istockphoto.com/id/1438185814/photo/college-student-asian-man-and-studying-on-laptop-at-campus-research-and-education-test-exam.webp?b=1&s=170667a&w=0&k=20&c=GB278ll5DUQDJx4WnhrD-DCwjjjfTfyVCB7jmGz5fmQ=',
                    'assets/images/suyash.png',
                    height: 300,
                    width: double.infinity,
                  ),
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        setState(() {
                          if (like3) {
                            like3 = false;
                            thirdPostLike = thirdPostLike! - 1;
                          } else {
                            like3 = true;
                            thirdPostLike = thirdPostLike! + 1;
                          }
                        });
                      },
                      icon: !like3
                          ? const Icon(Icons.favorite_border)
                          : const Icon(
                              Icons.favorite_rounded,
                              color: Colors.red,
                            ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.comment_outlined,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.send,
                      ),
                    ),
                    const Spacer(
                      flex: 1,
                    ),
                    IconButton(
                      onPressed: () {
                        setState(() {
                          bookmark3 = !bookmark3;
                        });
                      },
                      icon: bookmark3
                          ? const Icon(Icons.bookmark_rounded)
                          : const Icon(Icons.bookmark_border),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    "Liked by _om_pawar_ and $thirdPostLike others",
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    "𝐒𝐔𝐘𝐀𝐒𝐇 𝐌𝐎𝐑𝐄 tumcha kai baba baray",
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
              ],
            ),
          ],
        ),
      ),
      //===========================================================
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          IconButton(
            onPressed: () {
              setState(() {
                homeIconActive = !homeIconActive;
                onClick(Icons.home_outlined);
              });
            },
            icon: homeIconActive
                ? const Icon(Icons.home_outlined)
                : const Icon(Icons.home),
            iconSize: 30,
          ),
          IconButton(
            onPressed: () {
              setState(() {
                searchIconActive = !searchIconActive;
                onClick(Icons.search);
              });
            },
            icon: searchIconActive
                ? const Icon(Icons.saved_search)
                : const Icon(Icons.search_outlined),
            iconSize: 30,
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.add_box_outlined),
            iconSize: 30,
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.video_call_outlined),
            iconSize: 30,
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.person_outline),
            iconSize: 30,
          ),
        ],
      ),
    );
  }
}
