import 'package:dribbble_ui/Products/product_detail.dart';
import 'package:flutter/material.dart';

import 'package:dribbble_ui/models/cart.dart';

class CustomListTile extends StatelessWidget {
  final String title;
  final Color color1;
  final Color color2;
  final String image;
  final String price;
  final bool isChecked;
  //final Color c1, c2;
  const CustomListTile({
    Key? key,
    required this.title,
    required this.color1,
    required this.color2,
    required this.image,
    required this.price,
    required this.isChecked,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return ProductDetail(shoephoto: 'assets/images/pp1.png');
            }));
          },
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.blue.withOpacity(0.1),
            ),
            width: 160,
            height: 267,
            child: Column(
                //  mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            child: Text(
                          title,
                          style: TextStyle(fontSize: 18),
                        )),
                        // Text(
                        //   'One SE',
                        //   style: TextStyle(fontSize: 18),
                        // ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          child: Row(children: [
                            Container(
                              width: 15,
                              height: 15,
                              color: color1,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              width: 15,
                              height: 15,
                              color: color2,
                            ),
                          ]),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 8.0, horizontal: 10),
                          child: Center(
                            child: Container(
                              child: Image.asset(
                                image,
                                fit: BoxFit.cover,
                              ),
                              width: 120,
                              height: 120,
                          //    color: Colors.black,
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            Column(
                              children: [Text(price), const Text('Price')],
                            ),
                            SizedBox(
                              width: 50,
                            ),
                            SafeArea(
                                child: Container(
                              child: IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    isChecked
                                        ? Icons.check_box
                                        : Icons.check_box_outline_blank,
                                    size: 30,
                                  )),
                            ))
                          ],
                        )
                      ],
                    ),
                  )
                ]),
          ),
        ),
      ),
    );
  }
}

class t1t2 extends StatelessWidget {
  final String text1;
  final String text2;
  final Color? c1, c2;
  const t1t2({
    Key? key,
    required this.text1,
    required this.text2,
    this.c2,
    this.c1,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                text1,
                style: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 22, color: c1),
              ),
              Text(
                text2,
                style: TextStyle(
                  color: c2,
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
