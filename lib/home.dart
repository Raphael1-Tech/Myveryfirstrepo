
import 'package:financial_app/transfer.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedItemIndex = 2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Row(
        children: [
          buildNavBarItem(Icons.home, 0,),
          buildNavBarItem(Icons.card_giftcard, 1),
          buildNavBarItem(Icons.qr_code_2_outlined, 2),
          buildNavBarItem(Icons.message_outlined, 3),
          buildNavBarItem(Icons.person, 4),
        ],
      ),
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: 300,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Color(0XFF03A9F4), Color(0XFF01579B)]),
                ),
                // child: Padding(
                //   padding:
                //       const EdgeInsets.only(left: 20, right: 20.0, top: 30),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.menu,
                            color: Colors.white,
                          ),

                          Text(
                            "Available balance",
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                          Icon(
                            Icons.notifications,
                            color: Colors.white,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 80.0,
                            height: 80.0,
                            decoration: BoxDecoration(
                              color: Color(0XFF00B686),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black.withOpacity(.1),
                                    blurRadius: 8,
                                    spreadRadius: 3)
                              ],
                              border: Border.all(
                                width: 1.5,
                                color: Colors.white,
                              ),
                              borderRadius: BorderRadius.circular(40.0),
                            ),
                            padding: EdgeInsets.all(5),
                            child: CircleAvatar(
                              backgroundImage: NetworkImage(
                                  "https://scontent.fmnl30-2.fna.fbcdn.net/v/t39.30808-6/278740214_2870892956388991_8840972835145742749_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=_OZxjQPh-G0AX9mQI7F&_nc_ht=scontent.fmnl30-2.fna&oh=00_AT_u7m8A717fWg0dCxIpgflfmOUBrq_zYnGoBfRWHzVOqQ&oe=6342EB0D"),
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Center(
                            child:
                          Column(

                           mainAxisAlignment: MainAxisAlignment.center,
                            children: [

                              Text(
                                "Raphael Alamag",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white),
                              ),

                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.camera_front,
                                    color: Colors.white,
                                  ),
                                  SizedBox(
                                    width: 1,
                                  ),
                                  RichText(
                                    text: TextSpan(
                                        text: "\₱ 500,000",
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w600,
                                        ),
                                        children: [
                                          TextSpan(
                                              text: "/Savings",
                                              style: TextStyle(
                                                  color: Colors.white38,
                                              ),
                                          ),
                                        ]
                                    ),
                                  ),
                                ],
                              )
                            ],
                          )
                          ),
                        ],
                      )
                    ],
                  ),
                //),
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  color: Color(0XFF03A9F4),
                  child: ListView(
                    padding: EdgeInsets.only(top: 75),
                    children: [
                      Text(
                        "Activity",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [

                          buildActivityButton(
                              Icons.add_chart,
                              "Bills",
                              Colors.lightGreenAccent,
                              Color(0XFF01579B)),
                          buildActivityButton(Icons.send_to_mobile, 'Buy Load', Colors.lightGreenAccent,
                              Color(0XFF01579B)),
                          buildActivityButton(Icons.money, "Send Money", Colors.lightGreenAccent, Color(0XFF01579B)),
                        ],
                      ),

                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          buildActivityButton(Icons.account_balance_wallet, "E-Withdrawal", Colors.lightGreenAccent, Color(0XFF01579B)),
                          buildActivityButton(Icons.savings,"Let's Save", Colors.lightGreenAccent, Color(0XFF01579B)),
                          buildActivityButton(Icons.home_outlined, "E-Padala", Colors.lightGreenAccent,
                              Color(0XFF01579B)),
                        ],
                      ),
                      Text(
                        "Total Expenses for the Month",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.red),
                      ),
                      Icon(
                        Icons.arrow_downward_sharp ,
                        color: Color(0XFF00838F),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Column(children: [
                      buildCategoryCard(Icons.fastfood, "Grocery", 9000, 18),
                      buildCategoryCard(Icons.electric_bolt, "Electric Expense ", 2500, 5),
                      buildCategoryCard(Icons.water_drop_sharp, 'Water Expenses ', 1500, 3),
                      buildCategoryCard(Icons.signal_cellular_alt, "Internet ", 3000,6),
                      buildCategoryCard(Icons.house_outlined, 'Rent ', 10000,20),
                    ],
                  ),
                  SizedBox(height: 20,
                  ),
                  Text(
                    "Total Income for the Month",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.lightGreenAccent),
                  ),
                  Icon(
                    Icons.arrow_upward_sharp,
                    color: Color(0XFF00838F),
                  ),
                  SizedBox(
                    height: 30,
                  ),

                    Column(children: [
                    buildCategoryCard(Icons.account_balance_wallet, "Online Sales", 15000, 30),
                    buildCategoryCard(Icons.money, "Wages", 30000, 60),
                    buildCategoryCard(Icons.car_rental, "Car Sales Commission", 5000 , 10),
                ],
               ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Net Income for the Month",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.cyanAccent),
                      ),
                  Icon(
                    Icons.equalizer ,
                    color: Color(0XFF00838F),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                      Column(children: [
                        buildCategoryCard(Icons.monetization_on_sharp, "Net Income", 24000, 48)
                      ],)
                  ],
                ),
                ),
              ),
            ],
          ),

          Positioned(
            top: 185,
            right: 0,
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
              width: MediaQuery.of(context).size.width * 0.85,
              height: 160,
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(.05),
                      blurRadius: 8,
                      spreadRadius: 3,
                      offset: Offset(0, 10),
                    ),
                  ],
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    bottomLeft: Radius.circular(50),
                  )),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                "Income",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Icon(
                                Icons.arrow_upward,
                                color: Color(0XFF00838F),
                              )
                            ],
                          ),
                          Text(
                            "\₱50,000.00",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18.0,
                                color: Colors.black87),
                          )
                        ],
                      ),
                      Container(width: 1, height: 50, color: Colors.grey),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                "Expenses",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Icon(
                                Icons.arrow_downward,
                                color: Color(0XFF00838F),
                              )
                            ],
                          ),
                          Text(
                            "\₱26,000.00",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18.0,
                                color: Colors.black87),
                          )
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "You only have  \₱ 24,000 this month after deducting monthly expenses",
                    style: TextStyle(
                      fontSize: 13,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Let's see the cost statistics for this period",
                    style: TextStyle(
                      fontSize: 13,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 1,
                    width: double.maxFinite,
                    color: Colors.grey.withOpacity(0.5),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    alignment: Alignment.centerRight,
                    child: Text(
                      "Tell me more",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0XFF00B686)),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  GestureDetector buildNavBarItem(IconData icon, int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedItemIndex = index;
        });
      },
      child: Container(
        width: MediaQuery.of(context).size.width / 5,
        height: 60,
        decoration: index == _selectedItemIndex
            ? BoxDecoration(
                border:
                    Border(bottom: BorderSide(width: 4, color: Colors.green)),
                gradient: LinearGradient(colors: [
                  Colors.green.withOpacity(0.3),
                  Colors.green.withOpacity(0.016),
                ], begin: Alignment.bottomCenter, end: Alignment.topCenter))
            : BoxDecoration(),
        child: Icon(
          icon,
          color: index == _selectedItemIndex ? Color(0XFF00B868) : Colors.grey,
        ),
      ),
    );
  }

  Container buildCategoryCard(
      IconData icon, String title, int amount, int percentage) {
    return Container(
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      height: 85,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(
                    icon,
                    color: Color(0xFF00B686),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    "\₱$amount",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "($percentage%)",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey),
                  )
                ],
              )
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Stack(
            children: [
              Container(
                height: 5,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(2),
                    color: Colors.grey.shade300),
              ),
              Container(
                height: 5,
                width: 80,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(2),
                    color: Color(0XFF00B686)),
              ),
            ],
          )
        ],
      ),
    );
  }

  GestureDetector buildActivityButton(
      IconData icon, String title, Color backgroundColor, Color iconColor) {
    return GestureDetector(
      onTap: () => Navigator.of(context).push(
          MaterialPageRoute(builder: (BuildContext context) => TransferPage())),
      child: Container(
        margin: EdgeInsets.all(10),
        height: 90,
        width: 90,
        decoration: BoxDecoration(
            color: backgroundColor, borderRadius: BorderRadius.circular(10.0)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: iconColor,
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              title,
              style:
                  TextStyle(color: Colors.black54, fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
