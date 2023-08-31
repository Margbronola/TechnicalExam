import 'package:flutter/material.dart';
import 'package:technicalexam/bottom_info.dart';
import 'package:technicalexam/new_arrival.dart';
import 'package:technicalexam/shop.dart';

import 'home.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage>
    with SingleTickerProviderStateMixin {
  late final TextEditingController search = TextEditingController();
  int selectedPageIndex = 0;

  final List<String> contents = [
    "HOME",
    "NEW ARRIVAL",
    "SHOP",
    "LAST COLLECTION",
    "MEN",
    "WOMEN"
  ];
  final List<Widget> contentChildren = const [
    HomePage(),
    NewArrivalPage(),
    ShopPage(),
    BottomInfoPage(),
  ];
  late final PageController _controller;
  @override
  void initState() {
    _controller = PageController();
    super.initState();
  }

  void _onItemTapped(int index) {
    setState(() {
      selectedPageIndex = index;
      _controller.animateToPage(
        index,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: SizedBox(
        width: size.width,
        height: size.height,
        child: Stack(
          children: [
            /// CHILDREN
            Positioned.fill(
                child: PageView.builder(
              pageSnapping: false,
              scrollDirection: Axis.vertical,
              controller: _controller,
              itemCount: contentChildren.length,
              physics: const AlwaysScrollableScrollPhysics(),
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  child: contentChildren[index],
                );
              },
            )),

            /// HEADER
            Container(
              color: Colors.white,
              margin: const EdgeInsets.only(top: 20),
              child: Wrap(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      size.width < 700
                          ? SizedBox(
                              height: 60,
                              width: size.width * .1,
                              child: IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.menu,
                                    color: Colors.grey,
                                  )),
                            )
                          : Container(),
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.only(left: 20),
                          height: 60,
                          child: AnimatedAlign(
                              duration: const Duration(
                                milliseconds: 700,
                              ),
                              alignment: size.width < 700
                                  ? Alignment.center
                                  : Alignment.centerLeft,
                              child: Image.asset("assets/images/Group 28.png")),
                        ),
                      ),
                      size.width > 700
                          ? Expanded(
                              child: Container(
                                height: 60,
                                padding: const EdgeInsets.only(right: 20),
                                alignment: Alignment.centerRight,
                                child: BottomNavigationBar(
                                  backgroundColor: Colors.white,
                                  elevation: 0,
                                  type: BottomNavigationBarType.fixed,
                                  selectedItemColor: Colors.black,
                                  unselectedItemColor: Colors.black,
                                  selectedFontSize: 11,
                                  unselectedFontSize: 11,
                                  showUnselectedLabels: true,
                                  iconSize: 5,
                                  items: <BottomNavigationBarItem>[
                                    ...contents.map(
                                      (e) => BottomNavigationBarItem(
                                        backgroundColor: Colors.white,
                                        icon: const Icon(
                                          Icons.abc,
                                          color: Colors.transparent,
                                        ),
                                        label: e,
                                      ),
                                    )
                                  ],
                                  currentIndex: selectedPageIndex,
                                  onTap: _onItemTapped,
                                ),
                              ),
                            )
                          : Container(),
                      size.width > 700
                          ? Container(
                              width: 200,
                              height: 40,
                              margin: const EdgeInsets.only(right: 10),
                              child: TextFormField(
                                controller: search,
                                decoration: InputDecoration(
                                  hintText: "Search",
                                  prefixIcon: const Icon(
                                    Icons.search_rounded,
                                    color: Colors.black,
                                  ),
                                  filled: true,
                                  fillColor: Colors.grey.shade200,
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        width: 3, color: Colors.grey.shade200),
                                    borderRadius: BorderRadius.circular(50.0),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        width: 3, color: Colors.grey.shade200),
                                    borderRadius: BorderRadius.circular(50.0),
                                  ),
                                ),
                              ),
                            )
                          : Container(),
                      Container(
                        padding: const EdgeInsets.only(right: 20),
                        child: Row(
                          children: [
                            Image.asset("assets/images/Group 3.png"),
                            const SizedBox(width: 10),
                            const Icon(
                              Icons.star_border_outlined,
                              color: Colors.black,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
