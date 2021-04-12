import 'package:flutter/material.dart';

import 'storeDetails.dart';

class Stores extends StatelessWidget {
  final String pickUp, dropOff, items;

  Stores({this.pickUp, this.dropOff, this.items});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Color(0xfff28b05),
      appBar: AppBar(
        backgroundColor: Color(0xfff28b05),
        elevation: 0.2,
        actions: [
          IconButton(icon: Icon(Icons.edit), onPressed: () {}),
        ],
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                color: Color(0xfff28b05),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.horizontal(
                  left: Radius.circular(16),
                  right: Radius.circular(16),
                ),
              ),
              child: ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Text(
                              "10 Apr",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w600),
                            ),
                            Text(
                              pickUp,
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.w600),
                            )
                          ],
                        ),
                        Icon(Icons.arrow_forward),
                        Column(
                          children: [
                            Text(
                              "10 Apr",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w600),
                            ),
                            Text(
                              dropOff,
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.w600),
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
                                color: Color(0xfff28b05),
                              ),
                            ),
                            Text(
                              items,
                              style: TextStyle(
                                  fontSize: 24, fontWeight: FontWeight.w600),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  storeTile(context),
                  storeTile(context),
                  storeTile(context),
                  SizedBox(
                    height: 100,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget storeTile(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => StoreDetails(),
            ),
          );
        },
        child: Container(
          height: 130, //MediaQuery.of(context).size.height * 0.14,
          decoration: BoxDecoration(
            color: Colors.white,
            //borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(blurRadius: 0.5),
            ],
          ),
          child: Row(
            children: [
              SizedBox(width: 5),
              Expanded(
                flex: 2,
                child: Image.network(
                  "https://images.unsplash.com/photo-1472851294608-062f824d29cc?ixid=MXwxMjA3fDB8MHxzZWFyY2h8Mnx8b3BlbiUyMHNob3B8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&w=1000&q=80",
                  fit: BoxFit.cover,
                ),
              ),
              Expanded(
                flex: 3,
                child: Container(
                  //color: Colors.red,
                  padding: EdgeInsets.only(left: 8, right: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(height: 10),
                      RichText(
                        text: new TextSpan(
                          text: 'Store Near ',
                          style: TextStyle(
                            color: Colors.orange,
                            fontSize: 15,
                          ),
                          children: <TextSpan>[
                            new TextSpan(
                              text: "- Kashmere Gate",
                              style: new TextStyle(
                                  fontSize: 15,
                                  color: Colors.blueGrey,
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 5),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
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
                          Row(
                            children: [
                              Text(
                                "4.5",
                                style: TextStyle(
                                  color: Colors.blueGrey,
                                  fontSize: 13,
                                ),
                              ),
                              Icon(
                                Icons.star,
                                size: 16,
                                color: Colors.yellow[800],
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 5),
                      Row(
                        children: [
                          Icon(
                            Icons.watch_later_outlined,
                            size: 16,
                            color: Colors.yellow[800],
                          ),
                          Text(
                            "10:00 AM - 8:30 PM",
                            style: TextStyle(
                              color: Colors.blueGrey,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Text(
                          "₹ 80 / Day",
                          style: TextStyle(
                            color: Colors.black.withOpacity(0.7),
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
