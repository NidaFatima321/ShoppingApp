import 'package:flutter/material.dart';
// import 'package:flutter_application_1/controllers/usersController.dart';
import 'package:flutter_application_1/shoppingApp/cartScreen.dart';
import 'package:flutter_application_1/shoppingApp/fragScreen.dart';
import 'package:flutter_application_1/shoppingApp/groceriesScreen.dart';
import 'package:flutter_application_1/shoppingApp/laptopScreen.dart';
import 'package:flutter_application_1/shoppingApp/skinScreen.dart';
import 'package:flutter_application_1/shoppingApp/smartphonesScreen.dart';
import 'package:get/get.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../models/shoppingModel.dart' as shopping;
import '../controllers/shoppingController.dart';
import 'listViewWidget.dart';

class ShoppingScreen extends StatefulWidget {
  const ShoppingScreen({super.key});

  @override
  State<ShoppingScreen> createState() => _ShoppingScreenState();
}

class _ShoppingScreenState extends State<ShoppingScreen> {
  ShoppingController usersController = Get.put(ShoppingController());
  PageController pageController=PageController();
  int ind=0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    usersController.getData();
    usersController.getFragr();
    usersController.getSkinc();
    usersController.getLaptop();
    usersController.getGroc();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.blueGrey,
          title:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Icon(Icons.list),
            Column(
              children: [
                Text("Shehbaz Commercial"),
                Text(
                  "59990 - Defence Housing Authority, Karachi",
                  style: TextStyle(fontSize: 12),
                  textAlign: TextAlign.left,
                ),
              ],
            ),
            GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => CartScreen(),
                  ));
                },
                child: Icon(Icons.shopping_bag))
          ]),
        ),
        body: Obx(() {
          return usersController.loading.value
              ? Center(child: CircularProgressIndicator())
              : Column(
                  children: [
                    CarouselSlider(
                      options: CarouselOptions(
                        height: 200.0,
                        enlargeCenterPage: true,
                        autoPlay: true,
                        aspectRatio: 16 / 9,
                        autoPlayCurve: Curves.fastOutSlowIn,
                        enableInfiniteScroll: true,
                        autoPlayAnimationDuration: Duration(milliseconds: 800),
                        viewportFraction: 0.8,
                      ),
                      items: [
                        Container(
                          margin: EdgeInsets.all(6.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            image: DecorationImage(
                              image: NetworkImage(
                                  usersController.shoppingList1[0].images[0]),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(6.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            image: DecorationImage(
                              image: NetworkImage(
                                  usersController.shoppingList2[3].images[0]),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(6.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            image: DecorationImage(
                              image: NetworkImage(
                                  usersController.shoppingList3[3].images[1]),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(6.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            image: DecorationImage(
                              image: NetworkImage(
                                  usersController.shoppingList4[0].images[2]),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(6.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            image: DecorationImage(
                              image: NetworkImage(
                                  usersController.shoppingList5[1].images[2]),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Container(
                      color: Colors.white,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Icon(Icons.search),
                          ),
                          Expanded(
                              child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: TextField(
                                decoration: InputDecoration(
                                    hintText: "Search item",
                                    fillColor: Colors.grey,
                                    enabledBorder: OutlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.grey)))),
                          ))
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 7,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          GestureDetector(
                             onTap: (){
                              ind=0;
                              pageController.animateToPage(0, duration: Duration(milliseconds: 200), curve: Curves.bounceIn);
                            },
                            child: Container(
                              padding: EdgeInsets.all(8.0),
                              margin: EdgeInsets.all(8.0),
                              decoration: BoxDecoration(
                                color: ind==0?Colors.white:Colors.grey[200],
                                border: ind==0?Border.all(color: Colors.black):Border.all(color: Colors.white70),
                              ),
                              child: Text(
                                "Smartphones",
                                style: TextStyle(
                                    fontWeight: ind==0?FontWeight.bold:FontWeight.normal, fontSize: 15),      
                              ),
                            ),
                            
                          ),
                          GestureDetector(
                            onTap: (){
                              ind=1;
                              pageController.animateToPage(1, duration: Duration(milliseconds: 200), curve: Curves.bounceIn);
                            },
                            child: Container(
                               padding: EdgeInsets.all(8.0),
                              margin: EdgeInsets.all(8.0),
                              decoration: BoxDecoration(
                                color: ind==1?Colors.white:Colors.grey[200],
                                border: ind==1?Border.all(color: Colors.black):Border.all(color: Colors.white70),
                              ),
                              child: Text("Laptops",
                                  style:  TextStyle(
                                    fontWeight: ind==1?FontWeight.bold:FontWeight.normal, fontSize: 15),),
                            ),
                          ),
                          GestureDetector(
                             onTap: (){
                              ind=2;
                              pageController.animateToPage(2, duration: Duration(milliseconds: 200), curve: Curves.bounceIn);
                            },
                            child: Container(
                               padding: EdgeInsets.all(8.0),
                              margin: EdgeInsets.all(8.0),
                              decoration: BoxDecoration(
                                color: ind==2?Colors.white:Colors.grey[200],
                                border: ind==2?Border.all(color: Colors.black):Border.all(color: Colors.white70),
                              ),
                              child: Text("Groceries", style:TextStyle(
                                    fontWeight: ind==2?FontWeight.bold:FontWeight.normal, fontSize: 15),),
                            ),),
                          GestureDetector(
                             onTap: (){
                              ind=3;
                              pageController.animateToPage(3, duration: Duration(milliseconds: 200), curve: Curves.bounceIn);
                            },
                            child: Container(
                               padding: EdgeInsets.all(8.0),
                              margin: EdgeInsets.all(8.0),
                              decoration: BoxDecoration(
                                color: ind==3?Colors.white:Colors.grey[200],
                                border: ind==3?Border.all(color: Colors.black):Border.all(color: Colors.white70),
                              ),
                              child: Text("Fragrences",style:TextStyle(
                                    fontWeight: ind==3?FontWeight.bold:FontWeight.normal, fontSize: 15),),
                            )),
                          GestureDetector(
                             onTap: (){
                              ind=4;
                              pageController.animateToPage(4, duration: Duration(milliseconds: 200), curve: Curves.bounceIn);
                            },
                            child: Container(
                               padding: EdgeInsets.all(8.0),
                              margin: EdgeInsets.all(8.0),
                              decoration: BoxDecoration(
                                color: ind==4?Colors.white:Colors.grey[200],
                                border: ind==4?Border.all(color: Colors.black):Border.all(color: Colors.white70),
                              ),
                              child: Text("SkinCare",style:TextStyle(
                                    fontWeight: ind==4?FontWeight.bold:FontWeight.normal, fontSize: 15)),
                            ))
                        ],
                      ),
                    ),
                  Expanded(
                    child: PageView(
                      controller: pageController ,
                      children: [Smartphones(),Laptops(),Groceries(),Fragrences(),SkinCare()],
                    ),
                  )
                    // Expanded(
                    //   child: ListView.builder(
                    //     itemCount: usersController.shoppingList.length,
                    //     itemBuilder: (context, index) {
                    //       return SizedBox(
                    //         height: 200,
                    //         child: ListViewWidget(
                    //           product: usersController.shoppingList[index],
                    //           func: (){usersController.cartItems.add(usersController.shoppingList[index]);
                    //           usersController.total= usersController.total + usersController.cartItems[index].price;
                    //           setState(() {
                                
                    //           });
                    //           }, text: 'Add to Cart',
                              
                    //         ),
                            
                    //       );
                    //     },
                    //   ),
                    // ),
                  ],
                );
        }));
  }
}
