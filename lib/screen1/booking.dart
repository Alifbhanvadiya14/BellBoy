import 'package:flutter/material.dart';

class Booking extends StatelessWidget {
  final phoneController = TextEditingController();
  final nameController = TextEditingController();
  final emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    phoneController.text = "+91 8888888888";
    emailController.text = "abc@gmail.com";
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: MaterialButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24),
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
              "Pay ₹ 80",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  letterSpacing: 1,
                  fontWeight: FontWeight.w600),
            ),
          ),
        ),
      ),
      //backgroundColor: Color(0xfff28b05),
      appBar: AppBar(
        backgroundColor: Color(0xfff28b05),
        elevation: 0.2,
        title: Text(
          "Review Booking",
          style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              letterSpacing: 1,
              fontWeight: FontWeight.w600),
        ),
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
                              "09:30 AM",
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
                              "03:30 PM",
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
                              "4",
                              style: TextStyle(
                                  fontSize: 24, fontWeight: FontWeight.w600),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16.0, vertical: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Verified Bellboy Store",
                          style: TextStyle(
                            color: Colors.blueGrey,
                            fontSize: 18,
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              "4.5",
                              style: TextStyle(
                                color: Colors.blueGrey,
                                fontSize: 16,
                              ),
                            ),
                            Icon(
                              Icons.star,
                              size: 18,
                              color: Colors.yellow[800],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16.0, vertical: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Kashmere Store",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        RichText(
                          textAlign: TextAlign.center,
                          text: new TextSpan(
                            text: '₹ 80 \n',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                            ),
                            children: <TextSpan>[
                              new TextSpan(
                                text: "( per Item/Day )",
                                style: new TextStyle(
                                    fontSize: 14,
                                    color: Colors.blueGrey,
                                    fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 16),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Container(
                      height: 150,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(blurRadius: 3, color: Colors.grey[300])
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 12.0, vertical: 14),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                RichText(
                                  textAlign: TextAlign.center,
                                  text: new TextSpan(
                                    text: 'Drop Off \n',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16,
                                    ),
                                    children: <TextSpan>[
                                      new TextSpan(
                                        text: "Sat, 10 Apr\n",
                                        style: new TextStyle(
                                            fontSize: 14,
                                            color: Colors.blueGrey,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      new TextSpan(
                                        text: "Time: 3:00 PM",
                                        style: new TextStyle(
                                            fontSize: 14,
                                            color: Colors.blueGrey,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ],
                                  ),
                                ),
                                RichText(
                                  textAlign: TextAlign.center,
                                  text: new TextSpan(
                                    text: 'Pick Up \n',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16,
                                    ),
                                    children: <TextSpan>[
                                      new TextSpan(
                                        text: "Sat, 10 Apr\n",
                                        style: new TextStyle(
                                            fontSize: 14,
                                            color: Colors.blueGrey,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      new TextSpan(
                                        text: "Time: 5:00 PM",
                                        style: new TextStyle(
                                            fontSize: 14,
                                            color: Colors.blueGrey,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 16),
                            Container(
                              height: 40,
                              padding: EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border(
                                  top: BorderSide(color: Colors.black),
                                  bottom: BorderSide(color: Colors.black),
                                  left: BorderSide(color: Colors.black),
                                  right: BorderSide(color: Colors.black),
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Day(s): 1",
                                    style: new TextStyle(
                                        fontSize: 14,
                                        color: Colors.black87,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  Text(
                                    "Item(s): 4",
                                    style: new TextStyle(
                                        fontSize: 14,
                                        color: Colors.black87,
                                        fontWeight: FontWeight.w600),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 16),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 12.0, vertical: 8),
                    child: Text(
                      "Personal Details",
                      style: new TextStyle(
                          fontSize: 16,
                          color: Colors.black87,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Container(
                      padding: EdgeInsets.all(12),
                      height: 200,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(blurRadius: 3, color: Colors.grey[300])
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Mobile"),
                          SizedBox(height: 3),
                          Padding(
                            padding: const EdgeInsets.only(left: 12.0),
                            child: TextField(
                              controller: phoneController,
                              decoration: InputDecoration(
                                hintText: "Enter Phone",
                                contentPadding: EdgeInsets.symmetric(
                                    horizontal: 8, vertical: 2),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 12.0),
                            child: TextField(
                              controller: nameController,
                              decoration: InputDecoration(
                                hintText: "Full Name",
                                contentPadding: EdgeInsets.symmetric(
                                    horizontal: 8, vertical: 2),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 12.0),
                            child: TextField(
                              controller: emailController,
                              decoration: InputDecoration(
                                hintText: "Enter Email",
                                contentPadding: EdgeInsets.symmetric(
                                    horizontal: 8, vertical: 2),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 100),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
