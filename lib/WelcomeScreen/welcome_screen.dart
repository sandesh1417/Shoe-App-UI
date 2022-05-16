import 'package:flutter/material.dart';
import 'package:water_drop_nav_bar/water_drop_nav_bar.dart';
import 'package:dribbble_ui/models/cart.dart';
import '../Products/product_detail.dart';
import '../components/ownclass.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        leading: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
          child: Icon(
            Icons.bar_chart,
            size: 24,
            color: Colors.black,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
            child: Icon(
              Icons.shopping_basket,
              size: 24,
              color: Colors.black,
            ),
          )
        ],
        title: Center(
          child: Container(
            color: Colors.transparent,
            child: Image.asset(
              'assets/logo/logo1.png',
              height: 60,
              width: 120,
              alignment: Alignment.center,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 5),
            child: Container(
              width: double.infinity,
              height: size.height * 0.10,
              color: Colors.transparent,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 0, vertical: 8),
                      child: Text(
                        'New Collection',
                        // textAlign: TextAlign.start,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 26,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 0.0),
                      child: Text(
                        'Nike Original 2022',
                        style: TextStyle(color: Colors.orange, fontSize: 15),
                      ),
                    )
                  ]),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.blue.withOpacity(0.1)),
              //color: Colors.blueGrey,
              width: double.infinity,
              height: size.height * 0.23,
              child: Row(children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Nike Air Max 270',
                            style: TextStyle(fontSize: 22),
                          ),
                          Text(
                            'Men Shoes',
                            style:
                                TextStyle(fontSize: 18, color: Colors.black54),
                          ),
                        ],
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        width: 125,
                        height: 55,
                        color: Colors.black.withOpacity(0.9),
                        child: TextButton(
                            onPressed: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return ProductDetail(shoephoto: 'assets/images/pp2.png',);
                              }));
                            },
                            child: Text(
                              'Shop Now',
                              style: TextStyle(color: Colors.white),
                            )),
                      ),
                    )
                  ],
                ),
                Container(
                  height: 190,
                  width: 149,
                  //color: Colors.black,
                  child: Image.asset(
                    'assets/images/s1.jpg',
                    fit: BoxFit.contain,
                    //  width: 180,
                    // height: 190,
                  ),
                )
              ]),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 2),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.blue.withOpacity(0)),
              width: size.width,
              height: size.height * 0.08,
              // color: Colors.blueGrey,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    GestureDetector(
                        onTap: () {
                          print('a');
                        },
                        child: t1t2(
                          c1: Colors.black,
                          c2: Colors.orange,
                          text1: 'Life Style',
                          text2: '35 items',
                        )),
                    SizedBox(
                      width: 24,
                    ),
                    GestureDetector(
                        onTap: () {
                          print('b');
                        },
                        child: t1t2(
                          c1: Colors.grey.shade600,
                          c2: Colors.grey.shade600,
                          text1: 'Running',
                          text2: '41 items',
                        )),
                    SizedBox(
                      width: 24,
                    ),
                    GestureDetector(
                        onTap: () {
                          print('c');
                        },
                        child: t1t2(
                          c1: Colors.grey.shade600,
                          c2: Colors.grey.shade600,
                          text1: 'Tennis',
                          text2: '18 items',
                        )),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 1),
            child: Container(
              // color: Colors.blueGrey,
              //height: size.height*0.30,
              height: 300,
              width: size.width,

              child: ListView.builder(
                itemCount: cartList.length,
                itemBuilder: ((context, index) {
                  final currentItem = cartList[index];
               return   CustomListTile(
                    title: currentItem.title,
                    image: currentItem.image,
                    color1: currentItem.color1,
                    color2: currentItem.color2,
                    isChecked: currentItem.isChecked,
                    price: currentItem.price,
                  );
                  
                }),
                scrollDirection: Axis.horizontal,
              ),
            ),
          ),
        ]),
      ),
      bottomNavigationBar:
      BottomNavigationBar(
        backgroundColor: Colors.white,
        fixedColor: Colors.black,
        
        elevation: 0,
        onTap: null,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: 'home'),
          BottomNavigationBarItem(icon: Icon(Icons.favorite,),label: 'favorite'),

        ],
      )
       ,
      // WaterDropNavBar(
      //   waterDropColor: Colors.blue.withOpacity(0.7),
      //   selectedIndex: 0,
      //   onItemSelected: (selectedIndex) {
      //     selectedIndex;
      //   },
      //   barItems: <BarItem>[
      //     BarItem(
      //       filledIcon: Icons.bookmark_rounded,
      //       outlinedIcon: Icons.bookmark_border_rounded,
      //     ),
      //     BarItem(
      //         filledIcon: Icons.favorite_rounded,
      //         outlinedIcon: Icons.favorite_border_rounded),
      //     BarItem(
      //       filledIcon: Icons.email_rounded,
      //       outlinedIcon: Icons.email_outlined,
      //     ),
      //     BarItem(
      //       filledIcon: Icons.folder_rounded,
      //       outlinedIcon: Icons.folder_outlined,
      //     ),
      //   ],
      // ),
     //
     floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
     // floatingActionButtonAnimator: const FloatingActionButtonAnimator(),
      floatingActionButton: Container(
      //  color: Colors.black12,
        child: Stack(
          children:[
            
              Positioned(
                bottom: 10,
                left: 160,
                child: FloatingActionButton(
                          
                          onPressed: (){},
                          focusColor:Colors.black ,
                          child: Icon(Icons.search),
                          foregroundColor: Colors.white,
                          backgroundColor: Colors.black,
                          
                          ),
              ),

          ]

           
        ),
      ),
    );
  }
}
