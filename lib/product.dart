import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_pas_07052023/mainn.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({super.key});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 44, 44, 44),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          // title: Text("Test"),
          // centerTitle: true,
          leading: GestureDetector(
            onTap: () {
              setState(() {
                Navigator.push(context,
                    MaterialPageRoute(builder: ((context) => MyMain())));
              });
            },
            child: Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Icon(
                Icons.arrow_back_outlined,
                size: 50.0,
              ),
            ),
          ),
          actions: [
            Container(
              width: 80,
              height: 80,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(20)),
              child: IconButton(
                onPressed: () {},
                icon: Image.asset(
                  'assets/icons/bagcircle.png',
                  width: 40,
                  height: 40,
                ),
              ),
            ),
            SizedBox(
              width: 10.0,
            )
          ],
        ),
        body: Stack(
          children: [
            Container(
              width: double.infinity,
              height: double.infinity,
              color: Color.fromARGB(250, 44, 44, 44),
            ),
            Container(
              margin: EdgeInsets.only(top: 200),
              width: double.infinity,
              height: 500.0,
              decoration: BoxDecoration(
                  color: Color.fromARGB(250, 30, 30, 30),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(180.0),
                      topRight: Radius.circular(180.0))),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 15.0),
                  child: Column(
                    children: [
                      Text("F   R   U   I   T",
                          style: TextStyle(
                              color: Color.fromARGB(
                                250,
                                240,
                                171,
                                103,
                              ),
                              fontSize: 18,
                              fontWeight: FontWeight.w600)),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        "Pineapple",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 36,
                            fontWeight: FontWeight.w600),
                      ),
                      Container(
                        width: 220.0,
                        height: 220.0,
                        child: Image(
                          image: AssetImage('assets/img/nanas.png'),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    width: double.infinity,
                    height: 250.0,
                    // color: Colors.red,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Rp 80.000",
                              style: TextStyle(
                                  color: Color.fromARGB(
                                    250,
                                    240,
                                    171,
                                    103,
                                  ),
                                  fontSize: 40.0,
                                  fontWeight: FontWeight.w500),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 5.0, top: 30.0),
                              child: Text(
                                "per kg",
                                style: TextStyle(
                                    color: Color.fromARGB(250, 137, 137, 137),
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 65.0, top: 10.0),
                              child: Column(
                                children: [
                                  ClipOval(
                                    child: Container(
                                      width: 60.0,
                                      height: 60.0,
                                      color: Color.fromARGB(250, 44, 44, 44),
                                      child: Icon(
                                        Icons.favorite_border_outlined,
                                        color: Colors.red,
                                        size: 40,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 20.0),
                                  child: Container(
                                    height: 30.0,
                                    width: 120.0,
                                    // color: Colors.pink,
                                    child: Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              bottom: 10.0),
                                          child: Row(
                                            children: [
                                              Image.asset(
                                                'assets/icons/star.png',
                                                width: 20.0,
                                              ),
                                              Image.asset(
                                                'assets/icons/star.png',
                                                width: 20.0,
                                              ),
                                              Image.asset(
                                                'assets/icons/star.png',
                                                width: 20.0,
                                              ),
                                              Image.asset(
                                                'assets/icons/star.png',
                                                width: 20.0,
                                              ),
                                              Image.asset(
                                                'assets/icons/star.png',
                                                width: 20.0,
                                              ),
                                              Text(
                                                "5.0",
                                                style: TextStyle(
                                                  color: Color.fromARGB(
                                                      250, 137, 137, 137),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Container(
                          width: 300.0,
                          height: 130.0,
                          // color: Colors.pink,
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 0.0),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    ClipOval(
                                      child: Image(
                                        image: AssetImage(
                                          'assets/icons/thumb.png',
                                        ),
                                      ),
                                    ),
                                    ClipOval(
                                      child: Image(
                                        image: AssetImage(
                                            'assets/icons/fastdel.png'),
                                      ),
                                    ),
                                    ClipOval(
                                      child: Image(
                                        image: AssetImage(
                                            'assets/icons/foodl.png'),
                                      ),
                                    )
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Quality",
                                      maxLines: 2,
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    Text(
                                      "Fast",
                                      maxLines: 2,
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    Text(
                                      "Best-in",
                                      maxLines: 2,
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Assurance",
                                      maxLines: 2,
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    Text(
                                      "Delivery",
                                      maxLines: 2,
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    Text(
                                      "Best-in Tanse",
                                      maxLines: 2,
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
