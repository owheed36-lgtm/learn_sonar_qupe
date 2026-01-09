import 'package:flutter/material.dart';

class OrderView extends StatelessWidget {
  const OrderView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              const CartItem(),
              const FullBill(),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.pinkAccent,
                
                    minimumSize: Size(double.infinity, 50)
                                      ),
                  onPressed: () {}, child: Text("Check0ut",style: TextStyle(color: Colors.white),)),
            ],
          ),
        ),
      ),
    );
  }
}

class FullBill extends StatelessWidget {
  const FullBill({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _textSection("Sub ToTal", "100"),
        _textSection("Delivery Fee", "10"),
        Divider(),
        _textSection("Total", "110"),
      ],
    );
  }

  Widget _textSection(String billText, String price) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [Text(billText), Text(price + r"$")],
    );
  }
}

class CartItem extends StatelessWidget {
  const CartItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Card.outlined(
      child: Padding(
        padding: EdgeInsets.all(8),
        child: Row(
          spacing: 8,
          children: [
            //assets
            Image.asset("assets/images/Card.png"),
            //Column
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Red roses"),

                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.delete_outline_outlined,
                          color: Colors.red,
                        ),
                      ),
                    ],
                  ),
                  Text("15 Pink Rose Bouquet"),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [Text("EGP 600"), CounterItem()],
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

class CounterItem extends StatefulWidget {
  const CounterItem({super.key});

  @override
  State<CounterItem> createState() => _CounterItemState();
}

class _CounterItemState extends State<CounterItem> {
  int number = 1;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          icon: Icon(Icons.remove),
          onPressed: () {
            setState(() {
              if (number > 1) {
                number--;
              }
            });
          },
        ),
        Text("$number"),
        IconButton(
          icon: Icon(Icons.add),
          onPressed: () {
            setState(() {
              number++;
            });
          },
        ),
      ],
    );
  }
}
