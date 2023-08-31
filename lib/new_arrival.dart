import 'package:flutter/material.dart';

class NewArrivalPage extends StatefulWidget {
  const NewArrivalPage({super.key});

  @override
  State<NewArrivalPage> createState() => _NewArrivalPageState();
}

class _NewArrivalPageState extends State<NewArrivalPage> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 235, 234, 232),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 70, vertical: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: size.width > 700 ? 50 : 10),
            size.width > 700
                ? LayoutBuilder(
                    builder: (BuildContext ctx, BoxConstraints constraints) {
                    return Center(
                      child: SizedBox(
                        width: size.width > 1500
                            ? constraints.maxWidth * .65
                            : size.width,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              height: size.height * .6,
                              width: constraints.maxWidth * .2,
                              child: Stack(
                                alignment: Alignment.bottomCenter,
                                children: [
                                  Image.asset(
                                    "assets/images/866885169173291b165b8f0c4e1ca0a1 1.png",
                                    fit: BoxFit.fill,
                                  ),
                                  Positioned(
                                      bottom: 30,
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
                                              "Sweatshirt",
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
                            SizedBox(
                              height: size.height * .6,
                              width: constraints.maxWidth * .2,
                              child: Stack(
                                alignment: Alignment.bottomCenter,
                                children: [
                                  Image.asset(
                                    "assets/images/511a72054cd2afa7aa561b3c0c50541a 2.png",
                                    fit: BoxFit.fill,
                                  ),
                                  Positioned(
                                      bottom: 30,
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
                                              "Hoodies",
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
                            SizedBox(
                              height: size.height * .6,
                              width: constraints.maxWidth * .2,
                              child: Stack(
                                alignment: Alignment.bottomCenter,
                                children: [
                                  Image.asset(
                                    "assets/images/866885169173291b165b8f0c4e1ca0a1 1.png",
                                    fit: BoxFit.fill,
                                  ),
                                  Positioned(
                                      bottom: 30,
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
                                              "Pair",
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
                          ],
                        ),
                      ),
                    );
                  })
                : Column(
                    children: [
                      SizedBox(
                        height: 200,
                        width: 150,
                        child: Stack(
                          alignment: Alignment.bottomCenter,
                          children: [
                            Image.asset(
                              "assets/images/866885169173291b165b8f0c4e1ca0a1 1.png",
                              fit: BoxFit.fill,
                            ),
                            Positioned(
                                bottom: 30,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(50),
                                  child: SizedBox(
                                    height: 40,
                                    width: 120,
                                    child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        elevation: 0,
                                        backgroundColor: Colors.white,
                                      ),
                                      onPressed: () {},
                                      child: const Text(
                                        "Sweatshirt",
                                        style: TextStyle(
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                  ),
                                ))
                          ],
                        ),
                      ),
                      const SizedBox(height: 10),
                      SizedBox(
                        height: 200,
                        width: 150,
                        child: Stack(
                          alignment: Alignment.bottomCenter,
                          children: [
                            Image.asset(
                              "assets/images/511a72054cd2afa7aa561b3c0c50541a 2.png",
                              fit: BoxFit.fill,
                            ),
                            Positioned(
                                bottom: 30,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(50),
                                  child: SizedBox(
                                    height: 40,
                                    width: 120,
                                    child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        elevation: 0,
                                        backgroundColor: Colors.white,
                                      ),
                                      onPressed: () {},
                                      child: const Text(
                                        "Hoodies",
                                        style: TextStyle(
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                  ),
                                ))
                          ],
                        ),
                      ),
                      const SizedBox(height: 10),
                      SizedBox(
                        height: 200,
                        width: 150,
                        child: Stack(
                          alignment: Alignment.bottomCenter,
                          children: [
                            Image.asset(
                              "assets/images/866885169173291b165b8f0c4e1ca0a1 1.png",
                              fit: BoxFit.fill,
                            ),
                            Positioned(
                                bottom: 30,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(50),
                                  child: SizedBox(
                                    height: 40,
                                    width: 120,
                                    child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        elevation: 0,
                                        backgroundColor: Colors.white,
                                      ),
                                      onPressed: () {},
                                      child: const Text(
                                        "Pair",
                                        style: TextStyle(
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                  ),
                                ))
                          ],
                        ),
                      ),
                    ],
                  ),
            const SizedBox(height: 50),
            size.width > 700
                ? const Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit,\nsed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\nUt enim ad minim veniam, quis nostrud exercitation ullamco\nlaboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit\nin voluptate velit esse cillum dolore eu fugiat nulla pariatur.\nExcepteur sint occaecat cupidatat non proident, sunt in culpa qui officia\ndeserunt mollit anim id est laborum.",
                    textAlign: TextAlign.center,
                  )
                : Container()
          ],
        ),
      ),
    );
  }
}
