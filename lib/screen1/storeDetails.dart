import 'package:application/screen1/booking.dart';
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
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => Booking(),
              ),
            );
          },
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
        elevation: 0.2,
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
      body: SingleChildScrollView(
        // physics: NeverScrollableScrollPhysics(),
        child: Stack(
          children: [
            Container(
              color: Color(0xfff28b05),
              height: MediaQuery.of(context).size.height / 3,
            ),
            Container(
              // color: Colors.red,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: MediaQuery.of(context).size.height / 8),
                      Container(
                        padding: EdgeInsets.all(16),
                        height: 180,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 3,
                              color: Colors.grey[300],
                            ),
                          ],
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
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
                                    "??? 80 / Day / Item",
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.black.withOpacity(0.7),
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Divider(thickness: 2),
                            SizedBox(height: 10),
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
                                          Icons.privacy_tip,
                                          size: 16,
                                          color: Colors.yellow[800],
                                        ),
                                        Text(
                                          "  Upto 5000",
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
                      SizedBox(height: 20),
                      Container(
                        padding: EdgeInsets.all(12),
                        height: 120,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 3,
                              color: Colors.grey[300],
                            ),
                          ],
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Note",
                              style: TextStyle(
                                color: Colors.black54,
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(height: 5),
                            Text("-  Only Cash Payments"),
                            Text("-  Only Cash Payments"),
                            Text("-  Only Cash Payments"),
                            Text("-  Only Cash Payments"),
                          ],
                        ),
                      ),
                      SizedBox(height: 16),
                      Text(
                        "Nearby Stores",
                        style: TextStyle(
                          color: Colors.black87,
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(height: 10),
                      Container(
                        height: 200,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            storeTile(context),
                            storeTile(context),
                            storeTile(context),
                          ],
                        ),
                      ),

                      // ListView(
                      //   shrinkWrap: true,
                      //   physics: NeverScrollableScrollPhysics(),
                      //   scrollDirection: Axis.horizontal,
                      //   children: [storeTile(context)],
                      // )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget storeTile(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      height: 180,
      width: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            blurRadius: 3,
            color: Colors.grey[300],
          ),
        ],
      ),
      child: Column(
        children: [
          Image.network(
            "https://images.unsplash.com/photo-1472851294608-062f824d29cc?ixid=MXwxMjA3fDB8MHxzZWFyY2h8Mnx8b3BlbiUyMHNob3B8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&w=1000&q=80",
            fit: BoxFit.fill,
            height: 80,
          ),
          SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RichText(
                  text: new TextSpan(
                    text: 'Verified ',
                    style: TextStyle(
                      color: Colors.orange,
                      fontSize: 14,
                    ),
                    children: <TextSpan>[
                      new TextSpan(
                        text: " Bellboy \nStore",
                        style: new TextStyle(
                            fontSize: 14,
                            color: Colors.orange,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ),
                RichText(
                  text: new TextSpan(
                    text: '0.65 Km \n',
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 14,
                    ),
                    children: <TextSpan>[
                      new TextSpan(
                        text: "??? 80",
                        style: new TextStyle(
                            fontSize: 14,
                            color: Colors.blue,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
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
          ),
        ],
      ),
    );
  }
}
