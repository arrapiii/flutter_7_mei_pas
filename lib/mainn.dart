import 'package:flutter/material.dart';
import 'package:flutter_pas_07052023/product.dart';

void main() {
  runApp(const MyMain());
}

class MyMain extends StatefulWidget {
  const MyMain({super.key});

  @override
  State<MyMain> createState() => _MyMainState();
}

class _MyMainState extends State<MyMain> {
  int selectedIndex = 0;
  List<IconData> data = [
    Icons.home_filled,
    Icons.search_rounded,
    Icons.favorite,
    Icons.assignment_outlined
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(250, 30, 30, 30),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Color.fromARGB(250, 30, 30, 30),
          // title: Text("Test"),
          // centerTitle: true,
          leading: Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: Image.asset('assets/icons/menu.png'),
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: Image.asset('assets/icons/bagreddot.png')),
            IconButton(
                onPressed: () {},
                icon: Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/img/Kazuha.jpg'),
                      ),
                      borderRadius: BorderRadius.circular(15)),
                )),
            SizedBox(
              width: 10.0,
            )
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5.0),
          child: Stack(
            children: [
              Positioned(
                top: 25.0,
                left: 20.0,
                child: Container(
                    width: 360.0,
                    height: 200.0,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(250, 44, 44, 44),
                        borderRadius: BorderRadius.circular(20.0))),
              ),
              Positioned(
                top: -125.0,
                right: -65.0,
                child: Container(
                  height: 380.0,
                  width: 380.0,
                  color: Color.fromARGB(0, 255, 18, 18),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => ProductPage())));
                      });
                    },
                    child: Image.asset(
                      "assets/img/anekabuah.png",
                      width: 220.0,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 50.0,
                left: 50.0,
                child: Container(
                  width: 310.0,
                  height: 175.0,
                  color: Color.fromARGB(139, 44, 44, 44),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              "O  F  F  E  R",
                              style: TextStyle(
                                  color: Color.fromARGB(250, 240, 171, 103),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Row(
                          children: [
                            Text(
                              "Discount up to 40% Off",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30.0,
                                  fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Row(
                          children: [
                            Container(
                              width: 195.0,
                              // height: 50.0,
                              child: Column(
                                children: [
                                  Text(
                                    "In honor of World Health Day We'd like to give you this amazing offers.",
                                    maxLines: 3,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 13,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5.0,
                                  ),
                                  Row(
                                    children: [
                                      ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                              minimumSize: Size(70, 30),
                                              primary: Color.fromARGB(
                                                  250, 240, 171, 104)),
                                          onPressed: () {},
                                          child: Text(
                                            "View Offers",
                                            style: TextStyle(
                                                fontSize: 14.0,
                                                color: Colors.black),
                                          )),
                                      SizedBox(
                                        width: 50.0,
                                      )
                                    ],
                                  ),
                                  // Text("We'd like to give you this amazing"),
                                  // Text("offers."),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 230.0,
                left: 10.0,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    width: 360.0,
                    height: 30.0,
                    color: Color.fromARGB(0, 233, 30, 98),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Recommended Fruits",
                          style: TextStyle(
                              color: Color.fromARGB(250, 202, 201, 207),
                              fontSize: 22,
                              fontWeight: FontWeight.w500),
                        ),
                        Wrap(
                          crossAxisAlignment: WrapCrossAlignment.center,
                          children: [
                            Text(
                              "View All",
                              style: TextStyle(
                                  color: Color.fromARGB(250, 240, 171, 103),
                                  fontWeight: FontWeight.w500),
                            ),
                            SizedBox(
                              width: 5.0,
                            ),
                            Icon(
                              Icons.arrow_forward_ios_rounded,
                              color: Color.fromARGB(250, 240, 171, 103),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 280.0,
                left: 10.0,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        children: [
                          Container(
                            width: 150.0,
                            height: 100.0,
                            decoration: BoxDecoration(
                                // image: DecorationImage(
                                //   image: AssetImage('assets/img/nanas.png')
                                // ),
                                color: Color.fromARGB(250, 68, 50, 30),
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(75),
                                    topRight: Radius.circular(75))),
                          ),
                          Column(
                            children: [
                              Container(
                                width: 150.0,
                                height: 120.0,
                                decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(20),
                                        bottomRight: Radius.circular(20))),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      top: 5.0, right: 10.0),
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          SizedBox(
                                            height: 15.0,
                                          ),
                                          Align(
                                            alignment: Alignment.topRight,
                                            child: Row(
                                              children: [
                                                // Image.asset('assets/icons/star.png'),
                                                Container(
                                                  width: 25,
                                                  height: 25,
                                                  decoration: BoxDecoration(
                                                      image: DecorationImage(
                                                          image: AssetImage(
                                                              'assets/icons/star.png'))),
                                                ),
                                                Text(
                                                  "5.0",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontSize: 12),
                                                )
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 15.0),
                                        child: Row(
                                          children: [
                                            Text(
                                              "F  R  U  I  T",
                                              style: TextStyle(
                                                  color: Color.fromARGB(
                                                    250,
                                                    240,
                                                    171,
                                                    103,
                                                  ),
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w500),
                                            )
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 15.0, top: 10.0),
                                        child: Row(
                                          children: [
                                            Text(
                                              "Pineapple",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 22,
                                                  fontWeight: FontWeight.w500),
                                            )
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 15.0),
                                        child: Row(
                                          children: [
                                            Text(
                                              "Rp. 80.000",
                                              style: TextStyle(
                                                  color: Color.fromARGB(
                                                    250,
                                                    208,
                                                    178,
                                                    104,
                                                  ),
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 5.0, top: 10.0),
                                              child: Text(
                                                "per kg",
                                                style: TextStyle(
                                                    color: Color.fromARGB(
                                                        250, 137, 137, 137),
                                                    fontSize: 14,
                                                    fontWeight:
                                                        FontWeight.w600),
                                              ),
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Positioned(
                top: 280.0,
                left: 220.0,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        children: [
                          Container(
                            width: 150.0,
                            height: 100.0,
                            decoration: BoxDecoration(
                                // image: DecorationImage(
                                //   image: AssetImage('assets/img/nanas.png',)
                                // ),
                                color: Color.fromARGB(250, 67, 37, 29),
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(75),
                                    topRight: Radius.circular(75))),
                          ),
                          Column(
                            children: [
                              Container(
                                width: 150.0,
                                height: 120.0,
                                decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(20),
                                        bottomRight: Radius.circular(20))),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      top: 5.0, right: 10.0),
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          SizedBox(
                                            height: 15.0,
                                          ),
                                          Align(
                                            alignment: Alignment.topRight,
                                            child: Row(
                                              children: [
                                                // Image.asset('assets/icons/star.png'),
                                                Container(
                                                  width: 25,
                                                  height: 25,
                                                  decoration: BoxDecoration(
                                                      image: DecorationImage(
                                                          image: AssetImage(
                                                              'assets/icons/star.png'))),
                                                ),
                                                Text(
                                                  "4.7",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontSize: 12),
                                                )
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 15.0),
                                        child: Row(
                                          children: [
                                            Text(
                                              "F  R  U  I  T",
                                              style: TextStyle(
                                                  color: Color.fromARGB(
                                                    250,
                                                    240,
                                                    171,
                                                    103,
                                                  ),
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w500),
                                            )
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 15.0, top: 10.0),
                                        child: Row(
                                          children: [
                                            Text(
                                              "Apple",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 22,
                                                  fontWeight: FontWeight.w500),
                                            )
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 15.0),
                                        child: Row(
                                          children: [
                                            Text(
                                              "Rp. 25.000",
                                              style: TextStyle(
                                                  color: Color.fromARGB(
                                                    250,
                                                    208,
                                                    178,
                                                    104,
                                                  ),
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 5.0, top: 10.0),
                                              child: Text(
                                                "per kg",
                                                style: TextStyle(
                                                    color: Color.fromARGB(
                                                        250, 137, 137, 137),
                                                    fontSize: 14,
                                                    fontWeight:
                                                        FontWeight.w600),
                                              ),
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Positioned(
                top: 260.0,
                left: 35.0,
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ProductPage(),
                          ));
                    });
                  },
                  child: Container(
                    width: 130.0,
                    height: 130.0,
                    child: Image(
                      image: AssetImage('assets/img/nanas.png'),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 260.0,
                left: 245.0,
                child: Container(
                  width: 130.0,
                  height: 130.0,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/img/apel.png'),
                          fit: BoxFit.fill)),
                ),
              )
            ],
          ),
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(0),
          child: Material(
            elevation: 10,
            borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
            color: Color.fromARGB(250, 44, 44, 44),
            child: Container(
              height: 80,
              width: double.infinity,
              child: ListView.builder(
                itemCount: data.length,
                padding: EdgeInsets.symmetric(horizontal: 10),
                itemBuilder: (ctx, i) => Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedIndex = i;
                      });
                    },
                    child: AnimatedContainer(
                      duration: Duration(milliseconds: 100),
                      width: 80,
                      decoration: BoxDecoration(
                          border: i == selectedIndex
                              ? Border(
                                  top: BorderSide(
                                      width: 3.0,
                                      color:
                                          Color.fromARGB(250, 240, 171, 103)))
                              : null),
                      child: Icon(
                        data[i],
                        size: 40,
                        color: i == selectedIndex
                            ? Color.fromARGB(249, 255, 255, 255)
                            : Color.fromARGB(250, 164, 164, 164),
                      ),
                    ),
                  ),
                ),
                scrollDirection: Axis.horizontal,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
