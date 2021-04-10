import 'package:flutter/material.dart';

class StoreDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: MaterialButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          color: Color(0xfff28b05),
          elevation: 0,
          onPressed: () {},
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: Text(
              "Book Now",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  letterSpacing: 1,
                  fontWeight: FontWeight.w600),
            ),
          ),
        ),
      ),
      appBar: AppBar(
        backgroundColor: Color(0xfff28b05),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Text(
                  "10 Apr",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ),
                Text(
                  "9:30 AM",
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
                )
              ],
            ),
            Icon(Icons.arrow_forward),
            Column(
              children: [
                Text(
                  "10 Apr",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ),
                Text(
                  "4:30 AM",
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
                )
              ],
            ),
            VerticalDivider(
              color: Colors.black,
            ),
            Column(
              children: [
                Text(
                  "Items",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
                Text(
                  "5",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                )
              ],
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 140,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(blurRadius: 1),
                ],
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        RichText(
                          text: new TextSpan(
                            text: 'Verified ',
                            style: TextStyle(
                              color: Colors.blue,
                              fontSize: 16,
                            ),
                            children: <TextSpan>[
                              new TextSpan(
                                text: " Bellboy Store",
                                style: new TextStyle(
                                    fontSize: 16,
                                    color: Colors.black54,
                                    fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.map,
                              size: 16,
                              color: Colors.grey[500],
                            ),
                            Text(
                              "0.65 km",
                              style: TextStyle(
                                color: Colors.blueGrey,
                                fontSize: 13,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  //SizedBox(height: 5),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Kashmora Gate",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black.withOpacity(0.7),
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text(
                          "₹ 80 / Day / Item",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black.withOpacity(0.7),
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Divider(thickness: 2),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Text("Opening Hours"),
                          SizedBox(height: 5),
                          Row(
                            children: [
                              Icon(
                                Icons.watch_later_outlined,
                                size: 16,
                                color: Colors.yellow[800],
                              ),
                              Text(
                                "  10:00 AM - 8:30 PM",
                                style: TextStyle(
                                  color: Colors.blueGrey,
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text("Items Insuranced"),
                          SizedBox(height: 5),
                          Row(
                            children: [
                              Icon(
                                Icons.dashboard,
                                size: 16,
                                color: Colors.yellow[800],
                              ),
                              Text(
                                "  Upto 500",
                                style: TextStyle(
                                  color: Colors.blueGrey,
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Text("Note : Only Cash Payments")
          ],
        ),
      ),
    );
  }
}
