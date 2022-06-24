import 'package:coffe/cappuccino.dart';
import 'package:flutter/material.dart';

class Page2 extends StatefulWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  List<bool> like = List.generate(4, (index) => false);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.amber,
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.amber,
            leading: const Padding(
              padding: EdgeInsets.all(10),
              child: CircleAvatar(
                backgroundColor: Color.fromARGB(255, 235, 194, 191),
              ),
            ),
            actions: const [
              Padding(
                padding: EdgeInsets.all(10),
                child: Icon(
                  Icons.search_rounded,
                  size: 30,
                ),
              )
            ],
          ),
          body: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  "Brewing Coffee",
                  style: TextStyle(
                    fontSize: 25,
                    letterSpacing: 5,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 25),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (contaxt) => Cappuccino(
                              "Chemex",
                              "Try coffees from Kenya, Ethiopia",
                              15,
                              "assets/images/chemex.jpg",
                            ),
                          ),
                        );
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.brown[300],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        padding: EdgeInsets.all(12),
                        width: 150,
                        height: 250,
                        child: Column(
                          children: [
                            Container(
                              alignment: Alignment.topRight,
                              child: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    like[0] = !like[0];
                                  });
                                },
                                child: Icon(
                                  Icons.favorite,
                                  size: 30,
                                  color: like[0] ? Colors.red : Colors.white,
                                ),
                              ),
                            ),
                            const SizedBox(height: 10),
                            Image.asset(
                              "assets/images/chemex.jpg",
                              fit: BoxFit.cover,
                              width: 140,
                              height: 133,
                            ),
                            const SizedBox(height: 10),
                            Text.rich(
                              TextSpan(
                                children: [
                                  const TextSpan(
                                    text: "Chemex\t\t\t\t\t\t\t\t\t",
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.white,
                                    ),
                                  ),
                                  TextSpan(
                                    text: "\$15\n",
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.brown[900],
                                    ),
                                  ),
                                  TextSpan(
                                    text: "try coffees from Keniya,\nEthiopia.",
                                    style: TextStyle(
                                      fontSize: 10,
                                      color: Colors.brown[700],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(width: 20),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (contaxt) => Cappuccino(
                              "French Press",
                              "Try coffees from sumartra, Mexico",
                              20,
                              "assets/images/french_press.jpg",
                            ),
                          ),
                        );
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.brown[300],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        padding: EdgeInsets.all(12),
                        width: 150,
                        height: 250,
                        child: Column(
                          children: [
                            Container(
                              alignment: Alignment.topRight,
                              child: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    like[1] = !like[1];
                                  });
                                },
                                child: Icon(
                                  Icons.favorite,
                                  size: 30,
                                  color: like[1] ? Colors.red : Colors.white,
                                ),
                              ),
                            ),
                            const SizedBox(height: 10),
                            Image.asset(
                              "assets/images/french_press.jpg",
                            ),
                            const SizedBox(height: 10),
                            Text.rich(
                              TextSpan(
                                children: [
                                  const TextSpan(
                                    text: "French Press\t\t",
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.white,
                                    ),
                                  ),
                                  TextSpan(
                                    text: "\$20\n",
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.brown[900],
                                    ),
                                  ),
                                  TextSpan(
                                    text: "try coffees from sumartra,\nMexico.",
                                    style: TextStyle(
                                      fontSize: 10,
                                      color: Colors.brown[700],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                const Text(
                  "Espersso Coffee",
                  style: TextStyle(
                    fontSize: 25,
                    letterSpacing: 5,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 25),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (contaxt) => Cappuccino(
                              "Latte",
                              "Espersso Steamed milk and\n thin of foam",
                              10,
                              "assets/images/latte.jpg",
                            ),
                          ),
                        );
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.brown[300],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        padding: EdgeInsets.all(12),
                        width: 150,
                        height: 250,
                        child: Column(
                          children: [
                            Container(
                              alignment: Alignment.topRight,
                              child: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    like[2] = !like[2];
                                  });
                                },
                                child: Icon(
                                  Icons.favorite,
                                  size: 30,
                                  color: like[2] ? Colors.red : Colors.white,
                                ),
                              ),
                            ),
                            const SizedBox(height: 10),
                            Image.asset(
                              "assets/images/latte.jpg",
                              fit: BoxFit.cover,
                              height: 133,
                            ),
                            const SizedBox(height: 10),
                            Text.rich(
                              TextSpan(
                                children: [
                                  const TextSpan(
                                    text: "Latte\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t",
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.white,
                                    ),
                                  ),
                                  TextSpan(
                                    text: "\$10\n",
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.brown[900],
                                    ),
                                  ),
                                  TextSpan(
                                    text:
                                        "Espersso Steamed milk and\n thin of foam",
                                    style: TextStyle(
                                      fontSize: 10,
                                      color: Colors.brown[700],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(width: 20),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (contaxt) => Cappuccino(
                              "Cappucino",
                              "Espersso Steamed milk and thin of foam",
                              8,
                              "assets/images/cappuchino.jpg",
                            ),
                          ),
                        );
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.brown[300],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        padding: EdgeInsets.all(12),
                        width: 150,
                        height: 250,
                        child: Column(
                          children: [
                            Container(
                              alignment: Alignment.topRight,
                              child: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    like[3] = !like[3];
                                  });
                                },
                                child: Icon(
                                  Icons.favorite,
                                  size: 30,
                                  color: like[3] ? Colors.red : Colors.white,
                                ),
                              ),
                            ),
                            const SizedBox(height: 10),
                            Image.asset(
                              "assets/images/cappuchino.jpg",
                            ),
                            const SizedBox(height: 10),
                            Text.rich(
                              TextSpan(
                                children: [
                                  const TextSpan(
                                    text: "Cappuccino\t\t\t\t\t\t",
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.white,
                                    ),
                                  ),
                                  TextSpan(
                                    text: "\$8\n",
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.brown[900],
                                    ),
                                  ),
                                  TextSpan(
                                    text:
                                        "Espersso Steamed milk and\n thin of foam",
                                    style: TextStyle(
                                      fontSize: 10,
                                      color: Colors.brown[700],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          )),
    );
  }
}
