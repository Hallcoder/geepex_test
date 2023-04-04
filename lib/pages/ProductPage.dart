import 'package:flutter/material.dart';
import 'package:geepex_test/Components/ColorComponent.dart';
import 'package:geepex_test/Components/FAB.dart';
import 'package:geepex_test/Components/ImageComponent.dart';
import 'package:geepex_test/Components/SizeComponent.dart';
import 'package:geepex_test/Components/TextComponent.dart';


class ProductPage extends StatefulWidget {
  const ProductPage({Key? key}) : super(key: key);
  static String id = 'ProductPage';
  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  int _selectedIndex = 0;
  List<BottomNavigationBarItem> bottomNavBarItems = [
      BottomNavigationBarItem(
      icon: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: const [
            Icon(Icons.share,size: 20.0,),
            SizedBox(
              width: 30.0,
            ),
            Icon(Icons.monitor_heart_outlined,size: 20.0,),
          ],
        ),
      ),
        label: ''
    ),
    const BottomNavigationBarItem(icon: Icon(Icons.add_shopping_cart,size: 20.0,), label: ''),
  ];

  Color selectedColor = const Color(0xFBFCFE);
  void updateColor(Color color){
    setState(() {
      selectedColor = color;
      print("color selected");
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar:BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (int index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: bottomNavBarItems,
      ),
      floatingActionButton: const FAB(),
      body: SafeArea(
        child: ListView(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: const [
                      Icon(Icons.close, size: 30.0),
                      SizedBox(
                        width: 10.0,
                      ),
                      Text('Product Name', style: TextStyle(
                        fontSize: 30.0,
                      ),)
                    ],
                  ),
                  Container(
                    width: 300.0,
                    height: 300.0,
                    margin:const EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                        color: selectedColor,
                        borderRadius: BorderRadius.circular(10.0)
                    ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: const EdgeInsets.all(10.0),
                        child: Column(
                          children: const [
                            Text('AHA BHA PHA 30 Days ', style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.grey,
                              fontWeight: FontWeight.normal,
                            ),),
                            Text('Miracle Starter Kit', style: TextStyle(
                                color: Colors.blueGrey
                            ),)
                          ],
                        ),
                      ),

                      Container(
                        decoration: BoxDecoration(
                            color: Colors.orange,
                            borderRadius: BorderRadius.circular(10.0)
                        ),
                        width: 100.0,
                        height: 120.0,
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                            children: [
                              Container(
                                  width: 40.0,
                                  height: 40.0,
                                  decoration: BoxDecoration(
                                      color: Colors.cyanAccent,
                                      borderRadius: BorderRadius.circular(50)
                                  ),
                                  child: const Icon(Icons.check, size: 30.0,
                                    color: Colors.purple,)
                              ),
                              const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text('Brand Name', style: TextStyle(
                                    color: Colors.lightBlueAccent,
                                    fontSize: 15.0
                                )),
                              ),
                            ]
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            child: Row(
                              children: const [
                                Text('Out of Stock'),
                                Padding(
                                  padding: EdgeInsets.all(4.0),
                                  child: Icon(Icons.close, size: 20.0,),
                                )
                              ],
                            ),
                          ),
                          const Text('SKU: 235898464165')
                        ],
                      ),
                      Container(
                        width: 300.0,
                        child: Divider(
                          height: 10,
                          thickness: 1,
                          color: Colors.grey[400],
                        ),
                      ),
                      const Text(
                        "Colours", textAlign: TextAlign.start, style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.w500
                      ),),
                      Row(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children:  [
                              ColorComponent(
                                  color: Colors.black, update: updateColor),
                              ColorComponent(
                                  color: Colors.yellow, update: updateColor),
                              ColorComponent(
                                  color: Colors.red, update: updateColor),
                              ColorComponent(
                                  color: Colors.blue, update: updateColor),
                              ColorComponent(
                                  color: Colors.green, update: updateColor)
                            ],
                          ),
                        ],
                      ),
                      const Text("Size", style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.w500
                      ),),
                      Row(
                        children: const [
                          SizeComponent(text: 'Small', isSelected: false),
                          SizeComponent(text: 'Medium', isSelected: true),
                          SizeComponent(text: 'Large', isSelected: false)
                        ],
                      ),
                      Container(
                        width: 300.0,
                        child: Divider(
                          height: 10,
                          thickness: 1,
                          color: Colors.grey[400],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Row(
                          children: const [
                            Icon(Icons.fire_truck, color: Colors.blue,),
                            Padding(
                              padding: EdgeInsets.all(2.0),
                              child: Text("Shipping By ASYAD", style: TextStyle(
                                  color: Colors.lightBlueAccent,
                                  fontSize: 10.0
                              ),),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Row(
                          children: const [
                            Icon(Icons.document_scanner, color: Colors.blue,),
                            Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Text("Cash in delivery",
                                  style: TextStyle(
                                      color: Colors.lightBlueAccent,
                                      fontSize: 10.0
                                  ),)
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 100.0,
                        width: 400.0,
                      ),
                      const TextComponent(title: 'Description',
                          paragraph: "If you have sensitive skin that causes problems, even if you're a little tired, follow Miracle Kit's 4-STEP solution."),
                      const TextComponent(title: 'Ingredients',
                          paragraph: "If you have sensitive skin that causes problems, even if you're a little tired, follow Miracle Kit's 4-STEP solution."),
                      const TextComponent(title: 'Ingredients',
                          paragraph: "If you have sensitive skin that causes problems, even if you're a little tired, follow Miracle Kit's 4-STEP solution.")
                    ],

                  ),
                  const SizedBox(
                    height: 50.0,
                  ),
                  const ImageComponent(color: Colors.lightBlue),
                  const ImageComponent(color: Colors.black),
                  const ImageComponent(color: Colors.orange),
                  Row(
                    children: [
                    ],
                  ),
                  Container(
                    height: 80.0,
                    color: Colors.cyanAccent,
                    margin: const EdgeInsets.all(12.0),
                  ),
                  Container(
                    child: Divider(
                      height: 10,
                      thickness: 1,
                      color: Colors.grey[400],
                    ),
                  ),
                  const SizedBox(
                    height: 200.0,
                    width: 400.0,
                  ),
                ],

              ),
            ]
        ),
      ),
    );
  }
}