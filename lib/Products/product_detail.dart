import 'package:flutter/material.dart';

class ProductDetail extends StatefulWidget {
  final String shoephoto;
  ProductDetail({
    Key? key,
    required this.shoephoto,
  }) : super(key: key);

  @override
  State<ProductDetail> createState() => _ProductDetailState(shoephoto:shoephoto);
}

class _ProductDetailState extends State<ProductDetail> {
  final String shoephoto;
  static const Color myBlack = Color.fromARGB(0, 52, 50, 50);

  _ProductDetailState({required this.shoephoto});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.white,
            title: Container(
                child: Image.asset(
              'assets/logo/logo2.jpg',
              width: 250,
              height: 50,
            )),
            leading: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32),
              child: GestureDetector(
                onTap: () {
                  debugPrint('no shopping');
                },
                child: Icon(
                  Icons.remove_shopping_cart_outlined,
                  color: Colors.black,
                  size: 24,
                ),
              ),
            ),
            actions: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 24),
                child: GestureDetector(
                  child: Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                            width: 1, color: Colors.black.withOpacity(0.4))),
                    child: Icon(
                      Icons.shopping_basket,
                      size: 24,
                      color: Colors.black,
                    ),
                  ),
                ),
              )
            ]),
        body: Container(
          //  Size size= MediaQuery.of(context).size,
          //  color: Colors.blueGrey.shade200,
          height: size.height,
          width: double.infinity,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  //  color: Colors.green.shade300,
                  width: size.width * 0.9,
                  height: size.height * 0.085,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Text(
                          'Nike Air Max 370',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 21, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Mens shoes',
                          textAlign: TextAlign.center,
                          style:
                              TextStyle(color: Colors.blueGrey, fontSize: 17),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 0),
                child: Stack(children: [
                  Row(
                    children: [
                      Container(
                        //  color: Colors.green.shade300,
                        width: size.width * 0.22,
                        height: size.height * 0.56,
                        child: Column(children: [
                          Text(
                            'Size',
                            style: TextStyle(fontSize: 17),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          textShoeSize(
                              value: '9',
                              tcolor: Colors.black,
                              bcolor: Colors.white),
                          SizedBox(
                            height: 20,
                          ),
                          textShoeSize(
                            value: '9.5',
                            tcolor: Colors.white,
                            bcolor: Colors.black.withOpacity(0.8),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          textShoeSize(
                              value: '10',
                              bcolor: myBlack,
                              tcolor: Colors.black),
                          SizedBox(
                            height: 20,
                          ),
                          textShoeSize(
                              value: '10.5',
                              tcolor: Colors.black.withOpacity(0.8),
                              bcolor: Colors.white),
                          SizedBox(
                            height: 70,
                          ),
                          Container(
                            child: Column(
                              //mainAxisAlignment: MainAxisAlignment.start,
                              // crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 2, horizontal: 12),
                                  child: Row(
                                    children: [
                                      Text('\$'),
                                      Text(
                                        '170',
                                        style: TextStyle(
                                            fontSize: 28,
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 2, horizontal: 12),
                                  child: Text('Price  '),
                                )
                              ],
                            ),
                          )
                        ]),
                      ),
                      SizedBox(
                        width: 3,
                      ),
                      Container(
                        // color: Colors.green.shade300,
                        width: size.width * 0.44,
                        height: size.height * 0.55,
                        // child:

                        //     Image.asset(
                        //   'assets/logo/nikelogo.jpg',
                        //   width: size.width * 0.45,
                        //   height: size.height * .45,
                        //   fit: BoxFit.cover,
                        //   color: Colors.white.withOpacity(0.7),
                        //   colorBlendMode: BlendMode.modulate,
                        // ),
                      ),
                      SizedBox(
                        width: 58,
                      ),
                      Container(
                        // decoration: BoxDecoration(border: Border.all(width: 2,color: Colors.black),),
                        //color: Colors.green.shade300,
                        width: size.width * 0.15,
                        height: size.height * 0.56,
                        child: Column(children: [
                          //   Padding(padding: EdgeInsets.fromLTRB(40, 1, 0, 0)),
                          Text(
                            'Fav',
                            style: TextStyle(fontSize: 17),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                  width: 1,
                                  color: Colors.black.withOpacity(0.4)),
                              color: Colors.white,
                            ),
                            width: 38,
                            height: 38,
                            child: Center(child: Icon(Icons.favorite)),
                          ),
                          SizedBox(
                            height: 200,
                          ),
                          _colorCarosel(Colors.orange),
                          SizedBox(
                            height: 20,
                          ),
                          _colorCarosel(Colors.blue),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            'Colors',
                            style: TextStyle(fontSize: 17),
                          )
                        ]),
                      ),
                    ],
                  ),
                  Positioned(
                      bottom: 0,
                      top: 0,
                      left: 65,
                      right: 60,
                      child: Opacity(
                        opacity: 0.3,
                        child: Image.asset(
                          'assets/images/p22.png',
                          fit: BoxFit.cover,
                          width: 200,
                        ),
                      )),
                  Positioned(
                      bottom: 65,
                      top: 10,
                      left: 40,
                      right: 40,
                      child: Image.asset(
                        shoephoto,
                        width: 200,
                      )),
                ]),
              ),
              Container(
                // color: Colors.green.shade100,
                height: 169,
                width: 500,
                child: Center(
                  child: Image.asset(
                    'assets/images/b1.png',
                    width: 300,
                    height: 180,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: Container(
          height: 270,
          width: 80,
          child: Stack(
            children: [
              Positioned(
                top: 0,
                child: SizedBox(
                  height: 120,
                  width: 60,
                  child: FloatingActionButton(
                    onPressed: () {
                      print('absd');
                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40)),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 12,
                        ),
                        Icon(
                          Icons.local_grocery_store_sharp,
                          size: 40,
                        ),
                        Icon(Icons.expand_more_rounded),
                        Icon(Icons.expand_more_rounded),
                        //  Icon(Icons.expand_more_rounded)
                      ],
                    ),
                    backgroundColor: Colors.black.withOpacity(0.8),
                  ),
                ),
              ),
            ],
          ),
        ));
  }

  Container textShoeSize(
      {required String value, required Color tcolor, required Color bcolor}) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: bcolor,
          border: Border.all(width: 1.5, color: Colors.black.withOpacity(0.3))),
      width: 38,
      height: 38,
      child: Center(
          child: Text(
        value,
        style: TextStyle(
          color: tcolor,
          fontSize: 15,
          fontWeight: FontWeight.bold,
        ),
      )),
    );
  }

  Container _colorCarosel(Color color) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        border: Border.all(width: 1.5, color: Colors.black.withOpacity(0.3)),
      ),
      height: 38,
      width: 38,
      child: Center(
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: color,
          ),
          height: 14,
          width: 14,
          //  color: Colors.orange,
        ),
      ),
    );
  }
}
