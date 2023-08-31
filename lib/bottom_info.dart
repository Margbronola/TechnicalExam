import 'package:flutter/material.dart';

class BottomInfoPage extends StatefulWidget {
  const BottomInfoPage({super.key});

  @override
  State<BottomInfoPage> createState() => _BottomInfoPageState();
}

class _BottomInfoPageState extends State<BottomInfoPage> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 235, 234, 232),
      body: Container(
        alignment: Alignment.bottomCenter,
        height: size.width > 700 ? size.height * .5 : size.height * .7,
        width: size.width,
        padding: EdgeInsets.symmetric(
            horizontal: size.width > 700 ? 60 : 40, vertical: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  "assets/images/Group 29.png",
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    const Icon(Icons.send_rounded),
                    const SizedBox(width: 10),
                    size.width > 700
                        ? const Text(
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit,\nsed do eiusmod tempor incididunt ut labore et dolore magna aliqua.")
                        : const Text(
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit,")
                  ],
                ),
                const SizedBox(height: 10),
                const Row(
                  children: [
                    Icon(Icons.phone_android_rounded),
                    SizedBox(width: 10),
                    Text("Lorem ipsum "),
                  ],
                ),
                const SizedBox(height: 10),
                const Row(
                  children: [
                    Icon(Icons.email_outlined),
                    SizedBox(width: 10),
                    Text("Lorem ipsum dolor sit amet"),
                  ],
                ),
                const SizedBox(height: 20),
                Image.asset(
                  "assets/images/Mask group.png",
                ),
                size.width < 700
                    ? Container(
                        margin: const EdgeInsets.only(top: 50),
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "COLLECTION",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            SizedBox(height: 10),
                            Text(
                              "INFORMATION",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            SizedBox(height: 10),
                            Text(
                              "MORE",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                          ],
                        ),
                      )
                    : Container()
              ],
            ),
            size.width < 700
                ? Container()
                : const SizedBox(
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "COLLECTION",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            SizedBox(height: 50),
                            Text("Lorem ipsum"),
                            SizedBox(height: 20),
                            Text("Lorem ipsum"),
                            SizedBox(height: 20),
                            Text("Lorem ipsum"),
                            SizedBox(height: 20),
                            Text("Lorem ipsum"),
                            SizedBox(height: 20),
                            Text("Lorem ipsum"),
                            SizedBox(height: 20),
                            Text("Lorem ipsum"),
                          ],
                        ),
                        SizedBox(width: 30),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "INFORMATION",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            SizedBox(height: 50),
                            Text("Lorem ipsum"),
                            SizedBox(height: 20),
                            Text("Lorem ipsum"),
                            SizedBox(height: 20),
                            Text("Lorem ipsum"),
                            SizedBox(height: 20),
                            Text("Lorem ipsum"),
                            SizedBox(height: 20),
                            Text("Lorem ipsum"),
                            SizedBox(height: 20),
                            Text("Lorem ipsum"),
                          ],
                        ),
                        SizedBox(width: 30),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "MORE",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            SizedBox(height: 50),
                            Text("Lorem ipsum"),
                            SizedBox(height: 20),
                            Text("Lorem ipsum"),
                            SizedBox(height: 20),
                            Text("Lorem ipsum"),
                            SizedBox(height: 20),
                            Text("Lorem ipsum"),
                            SizedBox(height: 20),
                            Text("Lorem ipsum"),
                            SizedBox(height: 20),
                            Text("Lorem ipsum"),
                          ],
                        )
                      ],
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}
