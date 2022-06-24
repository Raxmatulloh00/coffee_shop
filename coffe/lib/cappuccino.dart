import 'package:flutter/material.dart';

class Cappuccino extends StatefulWidget {
  String title;
  String subtitle;
  int price;
  String image;
  Cappuccino(this.title, this.subtitle, this.price, this.image, {Key? key})
      : super(key: key);

  @override
  State<Cappuccino> createState() => _CappuccinoState();
}

class _CappuccinoState extends State<Cappuccino> {
  int _count = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 350,
        flexibleSpace: Image.asset(
          widget.image,
          fit: BoxFit.cover,
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Container(
          alignment: Alignment.topLeft,
          child: IconButton(
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.black,
              size: 30,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Espersso",
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 5),
            Text(
              widget.title,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
            const SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.brown[400],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        highlightColor: Colors.white,
                        hoverColor: Colors.white, // splashColor: Colors.white,
                        icon: const Icon(Icons.remove),
                        onPressed: () {
                          setState(() {});
                          if (_count > 0) {
                            _count -= 1;
                          } else {
                            _count = 0;
                          }
                        },
                      ),
                      Text(
                        _count.toString(),
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 25),
                      ),
                      IconButton(
                        highlightColor: Colors.white,
                        icon: const Icon(Icons.add),
                        onPressed: () {
                          setState(() {
                            _count += 1;
                          });
                        },
                      ),
                    ],
                  ),
                ),
                Text(
                  "\$${widget.price * _count}",
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.brown[400]),
                )
              ],
            ),
            const SizedBox(height: 30),
            Text(
              widget.subtitle,
              style: TextStyle(fontSize: 12.7),
            ),
            const SizedBox(height: 30),
            const Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: "volume:\t\t",
                    style: TextStyle(fontSize: 18),
                  ),
                  TextSpan(
                    text: "32oz",
                    style: TextStyle(color: Colors.brown, fontSize: 18),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
