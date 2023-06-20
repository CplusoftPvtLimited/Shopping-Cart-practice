import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shoes_app/view/screens/cart_food.dart';


class ItemDetails extends StatefulWidget {
  const ItemDetails({super.key});

  @override
  State<ItemDetails> createState() => _ItemDetailsState();
}

class _ItemDetailsState extends State<ItemDetails> {
  List<String> foodIcons = [
    'https://img.icons8.com/fluency/1x/hamburger.png',
    'https://img.icons8.com/fluency/1x/sunny-side-up-eggs.png',
    
    'https://img.icons8.com/fluency/1x/citrus.png',
    'https://img.icons8.com/fluency/1x/broccoli.png',
    'https://img.icons8.com/fluency/1x/citrus.png',
  ];
   List<String> foodData = [
    'Burger',
    'Egg',
    'Orange',
    'Stawbary',
    'Orange',
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor:const Color.fromARGB(208, 255, 255, 255),
        body: Padding(
          padding:const EdgeInsets.all(20),
           child: SingleChildScrollView(
             child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 46,
                      width: 46,
                      
                      //height: 20,
                      decoration: const BoxDecoration(
                        //borderRadius: BorderRadius.circular(50),
                        color: Colors.white,
                        shape: BoxShape.circle,
           
                      ),
                      child:InkWell(
                        onTap:(){
                          Navigator.pop(context);
                        },
                        child: const Icon(Icons.arrow_back,size: 27,opticalSize: 50,weight: 100,))),
                      
                      Text('Details',style: GoogleFonts.montserrat(color: Colors.black,fontSize: 28,fontWeight: FontWeight.bold),),
                      Container(
                      height: 46,
                      width: 46,
                      
                      //height: 20,
                      decoration: const BoxDecoration(
                        //borderRadius: BorderRadius.circular(50),
                        color: Colors.white,
                        shape: BoxShape.circle,
           
                      ),
                      child:InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>CartFood()));
                        },
                        child: const Icon(Icons.favorite,size: 27,opticalSize: 50,weight: 100,color: Colors.red,)),
                        ),
                    
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                
                 ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Image.asset('assets/food.webp'),
                  ),
                
                const SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Original Sushi',style: GoogleFonts.montserrat(color: Colors.black,fontSize: 28,fontWeight: FontWeight.w700),),
                    Row(
                      children: [
                        const Icon(Icons.star,size: 27,opticalSize: 50,weight: 100,color: Colors.yellow,),
                        const SizedBox(width: 10,),
                        Text('4.8',style: GoogleFonts.montserrat(color: Colors.black54,fontSize: 15,fontWeight: FontWeight.w700),),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 27,),
                Container(
                  height: 50,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: foodIcons.length,
                    itemBuilder: (BuildContext context,index) {
                      return Container(
                        //color: Colors.white,
                        child:
                        Row(
                          children: [
                            Container(
                              
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.white,
                              ),
                              child: Row(children: [
                                Image.network(foodIcons[index]),
                                SizedBox(width: 5,),
                                Text(foodData[index],style: GoogleFonts.montserrat(color: Colors.black,fontSize: 20,),),
                              
                              ],
                              ),
                            ),
                            SizedBox(width: 5,),
                            
                          ],
                        ),
                      );
                      /*return ListTile(
                      title: Text('Item $index'),
                      );*/
                    },
                    ),
                ),
                const SizedBox(height:30 ,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:[
                    Text('\$24.00',style: GoogleFonts.montserrat(color: Colors.black,fontSize: 28,fontWeight: FontWeight.bold),),
                    Container(
                      padding: const EdgeInsets.all(8),
                      height: 50,
                      width: 120,
                      decoration: BoxDecoration(
                        
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.white,
                        border: Border.all(color: Colors.black,width: 1)
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(Icons.remove,size: 35,color: Colors.black,),
                          Text('1',style: GoogleFonts.montserrat(color: Colors.black,fontSize: 26,fontWeight: FontWeight.bold),),
                   
                          Icon(Icons.add,size: 35,color: Colors.black,),
           
                        ],
                      ),
                    ),
                  ]
                  
                ),
                const SizedBox(height:28 ,),
                 Text('About Sushi',style: GoogleFonts.montserrat(color: Colors.black,fontSize: 23,fontWeight: FontWeight.w600),),
                const SizedBox(height:20 ,),
                Text('''Contrary to popular belief, Lorem Ipsum is not simply random textIt has roots in a piece of classical Latin literature from 45 BC, making itover 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney''',style: GoogleFonts.montserrat(color: Colors.black,fontSize: 16),),
                const SizedBox(height:10 ,),
               
              ],
             ),
           ),
          ),
          bottomNavigationBar:  Container(
                  padding: const EdgeInsets.all(20),
                      height: 90,
                      width: 250,
                      decoration: BoxDecoration(
                        
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                        //border: Border.all(color: Colors.black,width: 1)
                      ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text('\$24.00',style: GoogleFonts.montserrat(color: Colors.black,fontSize: 24,fontWeight: FontWeight.bold),),
                          
                          Text('Total Price',style: GoogleFonts.montserrat(color: Colors.black,fontSize: 14,fontWeight: FontWeight.bold),),

                        ],
                      ),
                      Container(
                        padding: EdgeInsets.all(5),
                        height: 80,
                        width: 160,
                        decoration: BoxDecoration(
                        
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.black,
                        border: Border.all(color: Colors.black,width: 1)
                      ),
                        child: Center(child: Text('Place Order',style: GoogleFonts.montserrat(color: Colors.white,fontSize: 20),)),
                      ),
                    ],
                  ),
                ),
      ),
    );
  }
}