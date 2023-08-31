import 'package:flutter/material.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Column(
          children: [
            Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 100, vertical: 10),
                child: size.width > 700
                    ? const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            "SALE",
                            style: TextStyle(
                                color: Colors.red,
                                fontSize: 30,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "SALE",
                            style: TextStyle(
                                color: Colors.red,
                                fontSize: 30,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "SALE",
                            style: TextStyle(
                                color: Colors.red,
                                fontSize: 30,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "SALE",
                            style: TextStyle(
                                color: Colors.red,
                                fontSize: 30,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "SALE",
                            style: TextStyle(
                                color: Colors.red,
                                fontSize: 30,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      )
                    : const Text(
                        "SALE",
                        style: TextStyle(
                            color: Colors.red,
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                      )),
            Container(
              height: 2,
              color: Colors.grey.shade400,
            ),
            Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: size.width > 1500 ? 250 : 100,
                    vertical: size.width > 1500 ? 10 : 50),
                child: GridView.count(
                    crossAxisCount: size.width > 700 ? 4 : 2,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    children: List.generate(
                      size.width > 700 ? 8 : 6,
                      (index) {
                        return Container(
                          margin: const EdgeInsets.all(5),
                          child: Stack(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image.asset(
                                      "assets/images/866885169173291b165b8f0c4e1ca0a1 1.png",
                                      fit: BoxFit.fill,
                                      height: size.width > 1500 ? 300 : 250,
                                    ),
                                  ),
                                  const Text(
                                    "LOREM IPSUM",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  const Text("Lorem ipsum")
                                ],
                              ),
                              Positioned(
                                  top: 50,
                                  right: 80,
                                  child: Container(
                                    color: const Color.fromARGB(
                                        255, 224, 202, 158),
                                    padding: const EdgeInsets.all(10),
                                    child: const Text("15% OFF"),
                                  ))
                            ],
                          ),
                        );
                      },
                    ))),
            ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: SizedBox(
                height: 55,
                width: 200,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    elevation: 10,
                    backgroundColor: Colors.white,
                  ),
                  onPressed: () {},
                  child: const Text(
                    "More",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
