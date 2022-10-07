import 'package:flutter/material.dart';

class TransferPage extends StatefulWidget {
  @override
  _TransferPageState createState() => _TransferPageState();
}

class _TransferPageState extends State<TransferPage> {
  int _selectedItemIndex = 2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Row(
        children: [
          buildNavBarItem(Icons.home, 0),
          buildNavBarItem(Icons.card_giftcard, 1),
          buildNavBarItem(Icons.camera, 2),
          buildNavBarItem(Icons.message_outlined, 3),
          buildNavBarItem(Icons.person, 4),
        ],
      ),
      body: Stack(
        children: [
          Container(
            padding: EdgeInsets.only(left: 30, right: 30, top: 30),
            color: Color(0XFF00B686),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      icon:Icon(Icons.arrow_back_ios),
                      onPressed: () {},
                      color: Colors.white,
                    ),
                    Text(
                      "Chat Me",
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                        Icon(
                        Icons.camera_alt,
                        color: Colors.white,
                      ),
                      SizedBox(width: 20,),
                      Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
            ]
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
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
                SizedBox(width: 20,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    buildExpenseBotton(Icons.chat, "Chat", true),
                    SizedBox(width: 20,),
                    buildExpenseBotton(Icons.video_call, "Video Call", true),
                    SizedBox(width: 20,),
                    buildExpenseBotton(Icons.home_repair_service, "Settings", true),
                    SizedBox(width: 20,),
                    buildExpenseBotton(Icons.security_update_warning_sharp, "Report", true),
                    SizedBox(width: 20,),
                    buildExpenseBotton(Icons.edit_note_sharp, "Mes-Request", true),
                    SizedBox(width: 20,),
                    buildExpenseBotton(Icons.security_sharp, "Privacy", true),
                    SizedBox(width: 20,),
                    buildExpenseBotton(Icons.person_search_sharp, "Contacts",true),
                    SizedBox(width: 20,),
                    buildExpenseBotton(Icons.system_update_sharp, "App Update",true),
                    SizedBox(width: 20,),
                    buildExpenseBotton(Icons.notifications, "Sounds",true),
                    SizedBox(width: 20,),



                  ]
                ),
                  ],
                )
              ],
            ),
          ),
          Positioned(
            top: 170,
            height: MediaQuery.of(context).size.height - 230,
            child: Column(
              children: [
                Container(
                  height: 150,
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.only(left: 30, right: 30, top: 30),
                  decoration: BoxDecoration(
                      color: Colors.grey[100],
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40),
                      )),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Recent",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Expanded(
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            buildRecentContact("Lyka Inson",
                                "https://scontent.xx.fbcdn.net/v/t1.15752-9/310555420_1575804362859700_8932231576253596975_n.jpg?stp=dst-jpg_p403x403&_nc_cat=106&ccb=1-7&_nc_sid=aee45a&_nc_ohc=YkOeL8tyB1AAX9JU_rK&_nc_oc=AQnm_d3EifgfRgTtQ8h9SjzwrrpQBPKcN82hPkIkDRyFPeBeVeDgCY3Ow8xtf9rXePpzAUdlwyG7ioWGPPZyHzAy&_nc_ad=z-m&_nc_cid=0&_nc_ht=scontent.xx&oh=03_AVI_owLdGIbWG_gle426azYqW-IGHRRHpy8ksRZOKlVXfA&oe=63637C20"),
                            SizedBox(width: 20,),
                            buildRecentContact("Mhay Claura Malicddem",
                                "https://scontent.fcrk1-1.fna.fbcdn.net/v/t39.30808-6/306008743_3334393746847826_1796781099278551434_n.jpg?_nc_cat=110&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=KmpsuHqtSE4AX8tNiXX&_nc_oc=AQnEycXZTJqXV0BO8AzkDQWDYxznFtSAKr5a3g4hON_U6U6QpDITaNox6I0E3SgCzC4&_nc_ht=scontent.fcrk1-1.fna&oh=00_AT_B_XQL38LtUhx51QaJTd8ZkcwyF6k_Nx7QA4wD0zxyDA&oe=6343817B"),
                            SizedBox(width: 20,),
                            buildRecentContact("Jaymarie Lois Recare",
                                "https://scontent.fcrk1-3.fna.fbcdn.net/v/t1.15752-9/305510956_1539808239822782_4959022677144053343_n.jpg?_nc_cat=101&ccb=1-7&_nc_sid=ae9488&_nc_ohc=Cu8OKU56GVsAX9PXxAq&_nc_ht=scontent.fcrk1-3.fna&oh=03_AVLvywjJb_AmCdW3zF8AWRtq4NgTj6Qtq5JTN1BIRW9uPw&oe=63650327"),
                            SizedBox(width: 20,),
                            buildRecentContact("Cyrus Kylle Alias",
                                "https://scontent.fcrk1-5.fna.fbcdn.net/v/t1.15752-9/309775465_1714288712297930_4857359918545973972_n.jpg?_nc_cat=103&ccb=1-7&_nc_sid=ae9488&_nc_ohc=HyuTITd_-3oAX-14obV&tn=ChTVw9JH5T5XUy59&_nc_ht=scontent.fcrk1-5.fna&oh=03_AVKrI0g9ImC8T6PtrhRAW-IuMSrAS32fqzg29rcF1tZ14Q&oe=63627292"),
                            SizedBox(width: 20,),
                            buildRecentContact("Zairah Maravilla",
                                "https://scontent.fcrk1-1.fna.fbcdn.net/v/t1.15752-9/309506081_1782570788758474_2758970370223474599_n.jpg?_nc_cat=110&ccb=1-7&_nc_sid=ae9488&_nc_ohc=K6nf_7jIvZsAX_Aawts&_nc_oc=AQm5CCkyDe7sD9JQCs2n5MnbsZcmpePEgihc9WSrYMviyAWU7rYuiM_s8-SYuD9PQ_s&_nc_ht=scontent.fcrk1-1.fna&oh=03_AVLTCNKdm3Q12dZvMez-e-UxH4hNjlYNMAyJuI0OpjVNIw&oe=63643F86"),
                            SizedBox(width: 20,),
                            buildRecentContact("Mariah Angela Ochavillo",
                                "https://scontent.fcrk1-4.fna.fbcdn.net/v/t1.15752-9/286141980_449657270441556_2308875812143312960_n.jpg?_nc_cat=102&ccb=1-7&_nc_sid=ae9488&_nc_ohc=FfyihYgy2f4AX9IlmpE&_nc_ht=scontent.fcrk1-4.fna&oh=03_AVJTvynUle-_wkITT2MNxOzhDsQcUVAcAAl_F8-gQba-VA&oe=63647E73"),
                            SizedBox(width: 20,),
                            buildRecentContact("Joan Damiles",
                                "https://scontent.xx.fbcdn.net/v/t1.15752-9/309944833_1113156469295012_6134086545561771740_n.jpg?stp=dst-jpg_s480x480&_nc_cat=106&ccb=1-7&_nc_sid=aee45a&_nc_ohc=0hXzeAdVoRYAX_RrFzp&_nc_ad=z-m&_nc_cid=0&_nc_ht=scontent.xx&oh=03_AVIgGR4L0hwg2Kx3nERQKd7SFAPs0tmK7R2zPHS22M4GCw&oe=63628DEB"),
                            SizedBox(width: 20,),
                            buildRecentContact("Meriam Acuña",
                                "https://scontent.fcrk1-3.fna.fbcdn.net/v/t39.30808-1/302300660_3208257639455963_4697585031113088903_n.jpg?stp=c0.0.100.100a_dst-jpg_p100x100&_nc_cat=101&ccb=1-7&_nc_sid=7206a8&_nc_ohc=iUF6WS4oM2oAX_zb1HV&_nc_ad=z-m&_nc_cid=0&_nc_ht=scontent.fcrk1-3.fna&oh=00_AT-BNyCKG2fiJtIj-GT0M309tvKz6E2ZANTX_G7cO9ZYIQ&oe=63422D50"),
                            SizedBox(width: 20,),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 30.0),
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(color: Colors.white),
                    child: ListView(
                      children: [
                        Text(
                          "Contacts",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey),
                        ),
                        SizedBox(height: 10,),
                        Container(
                          padding: EdgeInsets.symmetric(vertical: 8),
                          child: TextField(
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.search,
                                  size: 30, color: Colors.grey),
                              hintText: "Search",
                              hintStyle: TextStyle(color: Colors.grey),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        buildContactRow("Mhay Claura Malicdem","+639388251402","https://scontent.fcrk1-1.fna.fbcdn.net/v/t39.30808-6/306008743_3334393746847826_1796781099278551434_n.jpg?_nc_cat=110&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=KmpsuHqtSE4AX8tNiXX&_nc_oc=AQnEycXZTJqXV0BO8AzkDQWDYxznFtSAKr5a3g4hON_U6U6QpDITaNox6I0E3SgCzC4&_nc_ht=scontent.fcrk1-1.fna&oh=00_AT_B_XQL38LtUhx51QaJTd8ZkcwyF6k_Nx7QA4wD0zxyDA&oe=6343817B"),
                        buildContactRow("Lyka Inson","+639664181091", "https://scontent.xx.fbcdn.net/v/t1.15752-9/310555420_1575804362859700_8932231576253596975_n.jpg?stp=dst-jpg_p403x403&_nc_cat=106&ccb=1-7&_nc_sid=aee45a&_nc_ohc=YkOeL8tyB1AAX9JU_rK&_nc_oc=AQnm_d3EifgfRgTtQ8h9SjzwrrpQBPKcN82hPkIkDRyFPeBeVeDgCY3Ow8xtf9rXePpzAUdlwyG7ioWGPPZyHzAy&_nc_ad=z-m&_nc_cid=0&_nc_ht=scontent.xx&oh=03_AVI_owLdGIbWG_gle426azYqW-IGHRRHpy8ksRZOKlVXfA&oe=63637C20"),
                        buildContactRow("Mariah Angela Ochavillo", "+639458137691", "https://scontent.fcrk1-4.fna.fbcdn.net/v/t1.15752-9/286141980_449657270441556_2308875812143312960_n.jpg?_nc_cat=102&ccb=1-7&_nc_sid=ae9488&_nc_ohc=FfyihYgy2f4AX9IlmpE&_nc_ht=scontent.fcrk1-4.fna&oh=03_AVJTvynUle-_wkITT2MNxOzhDsQcUVAcAAl_F8-gQba-VA&oe=63647E73"),
                        buildContactRow("JayMarie Lois Recare", "+639655636746",  "https://scontent.fcrk1-3.fna.fbcdn.net/v/t1.15752-9/305510956_1539808239822782_4959022677144053343_n.jpg?_nc_cat=101&ccb=1-7&_nc_sid=ae9488&_nc_ohc=Cu8OKU56GVsAX9PXxAq&_nc_ht=scontent.fcrk1-3.fna&oh=03_AVLvywjJb_AmCdW3zF8AWRtq4NgTj6Qtq5JTN1BIRW9uPw&oe=63650327"),
                        buildContactRow("Cyrus Kylle Alias","+639669282790", "https://scontent.fcrk1-5.fna.fbcdn.net/v/t1.15752-9/309775465_1714288712297930_4857359918545973972_n.jpg?_nc_cat=103&ccb=1-7&_nc_sid=ae9488&_nc_ohc=HyuTITd_-3oAX-14obV&tn=ChTVw9JH5T5XUy59&_nc_ht=scontent.fcrk1-5.fna&oh=03_AVKrI0g9ImC8T6PtrhRAW-IuMSrAS32fqzg29rcF1tZ14Q&oe=63627292"),
                        buildContactRow("Meriam Acuña","+639214191716", "https://scontent.fcrk1-3.fna.fbcdn.net/v/t39.30808-1/302300660_3208257639455963_4697585031113088903_n.jpg?stp=c0.0.100.100a_dst-jpg_p100x100&_nc_cat=101&ccb=1-7&_nc_sid=7206a8&_nc_ohc=iUF6WS4oM2oAX_zb1HV&_nc_ad=z-m&_nc_cid=0&_nc_ht=scontent.fcrk1-3.fna&oh=00_AT-BNyCKG2fiJtIj-GT0M309tvKz6E2ZANTX_G7cO9ZYIQ&oe=63422D50"),
                        buildContactRow("Joan Damiles","+639363861095",  "https://scontent.xx.fbcdn.net/v/t1.15752-9/309944833_1113156469295012_6134086545561771740_n.jpg?stp=dst-jpg_s480x480&_nc_cat=106&ccb=1-7&_nc_sid=aee45a&_nc_ohc=0hXzeAdVoRYAX_RrFzp&_nc_ad=z-m&_nc_cid=0&_nc_ht=scontent.xx&oh=03_AVIgGR4L0hwg2Kx3nERQKd7SFAPs0tmK7R2zPHS22M4GCw&oe=63628DEB"),
                        buildContactRow("Zairah Marivilla", "+639502691567",  "https://scontent.fcrk1-1.fna.fbcdn.net/v/t1.15752-9/309506081_1782570788758474_2758970370223474599_n.jpg?_nc_cat=110&ccb=1-7&_nc_sid=ae9488&_nc_ohc=K6nf_7jIvZsAX_Aawts&_nc_oc=AQm5CCkyDe7sD9JQCs2n5MnbsZcmpePEgihc9WSrYMviyAWU7rYuiM_s8-SYuD9PQ_s&_nc_ht=scontent.fcrk1-1.fna&oh=03_AVLTCNKdm3Q12dZvMez-e-UxH4hNjlYNMAyJuI0OpjVNIw&oe=63643F86"),
                      ],
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Container buildContactRow(String name, String phone, String url) {
    return Container(
                       padding: EdgeInsets.symmetric(vertical: 10),
                       decoration: BoxDecoration(
                         border:Border(
                           bottom: BorderSide(width: 1, color: Colors.grey.shade200),
                         )
                       ),
                       child:Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                         Row(children: [CircleAvatar(
                           backgroundImage: NetworkImage(
                             url,),
                           radius: 25,
                         ),
                           SizedBox(width: 20,),
                           Column(
                             children: [
                               Text(name,
                                 style: TextStyle(
                                   fontSize: 14,
                                   fontWeight: FontWeight.bold,
                                 ),
                               ),
                               SizedBox(
                                 height: 5,
                               ),
                               Row(
                                 children: [
                                   Icon(
                                     Icons.phone,
                                     color: Colors.grey,
                                     size: 16,
                                   ),
                                   SizedBox(
                                     width: 10,
                                   ),
                                   Text(phone,
                                     style: (TextStyle(
                                       fontWeight: FontWeight.bold,
                                       color: Colors.grey,
                                     )),
                                   )
                                 ],
                               )
                                ],
                               )
                             ],
                           ),
                         Container(
                           height: 45,
                           width: 45,
                           decoration: BoxDecoration(
                             color: Colors.greenAccent.withOpacity(0.2),
                             borderRadius: BorderRadius.circular(10),
                           ),
                           child: Icon(Icons.arrow_forward_ios_outlined,
                             size: 20,
                             color: Colors.green,
                           ),
                         )
                         ],
                       ),
                     );
  }



  Container buildRecentContact(String name, String url) {
    return Container(
      margin: EdgeInsets.only(right: 30),
      child: Column(
        children: [
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              border: Border.all(width: 2, color: Colors.green),
              borderRadius: BorderRadius.circular(30),
            ),
            child: Padding(
              padding: const EdgeInsets.all(3.0),
              child: CircleAvatar(
                backgroundImage: NetworkImage(url),
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            name,
            style: TextStyle(
                fontSize: 10, fontWeight: FontWeight.bold, color: Colors.grey),
          )
        ],
      ),
    );
  }

  Container buildExpenseBotton(IconData icon, String title, bool isActive) {
    return Container(
      height: 70,
      width: 70,
      decoration: BoxDecoration(
        color: isActive ? Colors.white : Colors.black.withOpacity(0.1),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: isActive ? Color(0XFF00B686) : Colors.white,
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            title,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
              color: isActive ? Color(0XFF00B686) : Colors.white,
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
}
