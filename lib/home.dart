import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/Rectangle 2.png"),
              fit: BoxFit.fill,
            ),
          ),
          child: LayoutBuilder(
              builder: (BuildContext ctx, BoxConstraints constraints) {
            return Center(
              child: SizedBox(
                width:
                    size.width > 1500 ? constraints.maxWidth * .75 : size.width,
                child: size.width > 700
                    ? Stack(
                        alignment: AlignmentDirectional.center,
                        children: [
                          Positioned(
                              top: 200,
                              left: 0,
                              child: Image.asset(
                                "assets/images/3cacf6829646da04f4234b344d4808b8 1.png",
                                fit: BoxFit.fill,
                              )),
                          Positioned(
                              top: 170,
                              right: 0,
                              child: Image.asset(
                                "assets/images/00c248429c3b8745c82acf8029fc0c28 1.png",
                                fit: BoxFit.fill,
                              )),
                          Positioned(
                              top: 220,
                              left: 350,
                              child: Image.asset(
                                "assets/images/511a72054cd2afa7aa561b3c0c50541a 1.png",
                                fit: BoxFit.fill,
                              )),
                          Positioned(
                              bottom: 100,
                              left: 650,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(50),
                                child: SizedBox(
                                  height: 55,
                                  width: 200,
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      elevation: 0,
                                      backgroundColor: Colors.white,
                                    ),
                                    onPressed: () {},
                                    child: const Text(
                                      "Shop now",
                                      style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                ),
                              ))
                        ],
                      )
                    : Stack(
                        alignment: AlignmentDirectional.center,
                        children: [
                          Positioned(
                              top: 50,
                              right: 0,
                              child: Image.asset(
                                "assets/images/00c248429c3b8745c82acf8029fc0c28 1.png",
                                fit: BoxFit.fill,
                                height: 300,
                              )),
                          Positioned(
                              top: 250,
                              left: 10,
                              child: Image.asset(
                                "assets/images/511a72054cd2afa7aa561b3c0c50541a 1.png",
                                fit: BoxFit.fill,
                                height: 400,
                              )),
                          Positioned(
                              bottom: 50,
                              right: 10,
                              child: Image.asset(
                                "assets/images/3cacf6829646da04f4234b344d4808b8 1.png",
                                fit: BoxFit.fill,
                                height: 350,
                              )),
                          Positioned(
                              bottom: 450,
                              right: 100,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(50),
                                child: SizedBox(
                                  height: 55,
                                  width: 200,
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      elevation: 0,
                                      backgroundColor: Colors.white,
                                    ),
                                    onPressed: () {},
                                    child: const Text(
                                      "Shop now",
                                      style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                ),
                              ))
                        ],
                      ),
              ),
            );
          })),
    );
  }
}
