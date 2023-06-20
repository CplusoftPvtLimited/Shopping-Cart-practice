import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoes_app/view/screens/cart_food.dart';
import 'package:shoes_app/view/screens/details.dart';

import '../../controller/cart_controller.dart';
import '../../model/cart_model.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
   final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  void _openDrawer() {
    _scaffoldKey.currentState?.openDrawer();
  }

  //
   final List<Map<String, dynamic>> gridMap = [
    {
      "title": 'Chicken',
      "price": "100",
      "images":
          "assets/seven.jpeg",
    },
    {
      "title": 'Salad',
      "price": "150",
      "images":
          "assets/eight.jpeg", 
    },
    {
      "title": 'Pasta',
      "price": "200",
      "images":
          "assets/food.webp" ,
    },
    {
      "title": 'Rice',
      "price": "300",
      "images":
          "assets/six.jpeg",
    },
   
  ];
  //  

    List<Product> getProducts() {
    List<Product> _products = [];

    _products = gridMap.map((e) => Product.fromMap(e)).toList();

    return _products;
    }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: _scaffoldKey,
        backgroundColor: Color.fromARGB(208, 255, 255, 255),
        body: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //MyAppp(),
                  InkWell(
                    onTap: _openDrawer,
                    child: Container(
                      width: 56,
                      height: 56,
                      decoration:const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white60,
                    ),
                      child:const Icon(
                      Icons.menu_rounded,
                      color: Colors.black,
                      size: 32,
                      ),
                    ),
                  ),
                
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text('Location',style: TextStyle(color: Colors.black54,fontSize: 18,fontWeight: FontWeight.bold),),
                      Row(
                        children: [
                          Icon(Icons.location_on,color: Colors.red,
                          size: 32,
                            ),
                          Text('Singapore',style: TextStyle(color: Colors.black,fontSize: 22,fontWeight: FontWeight.bold),),
                        ],
                      ),
                    ],
                  ),
               
                 InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>CartFood()));
                  },
                   child: const Icon(Icons.card_travel_rounded,
                    size: 32,
                    ),
                 ),
                ],
              ),
              SizedBox(height: 20,),
              ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Image.asset('assets/food.webp'),
                ),
                SizedBox(height: 20,),
             Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.white,
                border: Border.all(color: Colors.black54,width: 2,),
              ),
              child:const TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Search Your Food',
                  prefixIcon: Icon(Icons.search,size: 30,color: Colors.black,),
                ),
              ),
             ),
             SizedBox(height: 20,),
          
             const Row(children: [
              Text('Popular Food',style: TextStyle(color: Colors.black,fontSize: 22,fontWeight: FontWeight.bold),),
              SizedBox(width: 170,),
              Text('View all',style: TextStyle(color: Colors.black87,fontSize: 18),),
             ],
             ),
               
             //
                Expanded(
                    
                  child: GridView.builder(  
                    itemCount: gridMap.length,  
                    gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(  
                  crossAxisCount: 2,  
                  crossAxisSpacing: 2.0,  
                  mainAxisSpacing: 4.0  ,
                  mainAxisExtent: 250
                    ),  
                    itemBuilder: (BuildContext context, int index){  
                      return Container(
                        //color: Colors.amber,
                        //height: 300,
                        //padding: EdgeInsets.all(0),
                        child: Column(
                          children: [
                            Container(
                              color: Colors.green,
                              
                              child: Image.asset("${gridMap.elementAt(index)['images']}",fit: BoxFit.cover,height: 150,width: 150,),),
                            Text(getProducts()[index].title,style: TextStyle(fontSize: 22,),),
                            SizedBox(height: 2,),
                            Row(
                              children: [
                              SizedBox(width: 35,),
                              Text(getProducts()[index].price.toString(),style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
                              SizedBox(width: 35,),
                              InkWell(
                                onTap: (){
                                  
                                  Provider.of<CartController>(context,
                                                    listen: false)
                                                    .addToCart(
                                                    getProducts()[index]);
                                  
                                },
                                child: Icon(Icons.shopping_cart_outlined),
                                ),
                              ],
                            ),
                          ],
                        ),
                      );  
                    },  
                  ),
                ), 
             //
            ],
          ),
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
             const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Text(
                  'Drawer Header',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text('Home'),
                onTap: () {
                  // Handle navigation to the home page
                },
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('Settings'),
                onTap: () {

                  // Handle navigation to the settings page
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}