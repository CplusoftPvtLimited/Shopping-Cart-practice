import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../../controller/cart_controller.dart';

class CartFood extends StatefulWidget {
  const CartFood({super.key});

  @override
  State<CartFood> createState() => _CartFoodState();
}

class _CartFoodState extends State<CartFood> {
 
  @override
  Widget build(BuildContext context) {
     var cartProvider = Provider.of<CartController>(context);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(208, 255, 255, 255),
        body: Padding(
          padding: const EdgeInsets.all(18.0),
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
                       onTap: () {
                          Navigator.pop(context);
                        },
                        child: const Icon(Icons.arrow_back,size: 27,opticalSize: 50,weight: 100,))),
                      
                      Text('Your Cart Food',style: GoogleFonts.montserrat(color: Colors.black,fontSize: 22,fontWeight: FontWeight.bold),),
                      Container(
                      height: 46,
                      width: 46,
                      
                      //height: 20,
                      decoration: const BoxDecoration(
                        //borderRadius: BorderRadius.circular(50),
                        color: Colors.white,
                        shape: BoxShape.circle,
           
                      ),
                    
                      child:const Icon(Icons.more_vert_rounded,size: 27,opticalSize: 50,weight: 100,color: Colors.black,),),
                  ],
                ),
                  SizedBox(height: 18,),
                //List View Builder

                Container(
                  height: 300,
                  
                  child: ListView.builder(
                    
                    itemCount: cartProvider.products.length,
                    itemBuilder: (BuildContext context,index) {
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            decoration:const BoxDecoration(
                              //color: Colors.white,
                            ),
                            child: Image.asset(cartProvider.products[index].images,height: 100,width: 100,)),
                          Container(
                            child: Column(
                              children: [
                               Text( cartProvider.products[index].title,style: GoogleFonts.montserrat(color: Colors.black,fontSize: 20,),),
                               SizedBox(height: 10,),
                               Text( cartProvider.products[index].price,style: GoogleFonts.montserrat(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
                              ],
                            ),
                          ),
                          SizedBox(width: 25,),
                          
                                Row(
                                  //mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                     children: [
                                     Container(
                                      decoration: BoxDecoration(
                                        border: Border.all(color: Colors.black45),
                                      ),
                                      
                                      child: InkWell(
                                        onTap: () {
                                          cartProvider.removeQty(index);
                                        },
                                        child: Icon(Icons.remove,size: 35,color: Colors.black,))
                                      ),
                                      SizedBox(width: 20,),
                                      Text(cartProvider.products[index].qty
                                            .toString(),style: GoogleFonts.montserrat(color: Colors.black,fontSize: 26,fontWeight: FontWeight.bold),),
                                      SizedBox(width: 20,),
                                      InkWell(
                                        onTap: (){
                                          cartProvider.addQty(index);
                                        },
                                        child: Icon(Icons.add,size: 35,color: Colors.black,)),
                         
                        ],
                      ),
                   ],
                  ),
                    //SizedBox(width: 10,),
                          ],
                        
                      );
                      /*Container(
                        height: 50,
                        width: 50,
                          child:Image.network(foodIcons[index]), // Assuming 'items' is a list of strings
                        );*/
                        
                  },
                  ),
                ),
                const SizedBox(height: 18,),
              Container(
              decoration:const BoxDecoration(
                //borderRadius: BorderRadius.circular(20),
                color: Colors.white,
                //border: Border.all(color: Colors.black54,width: 2,),
              ),
              child: TextField(
                decoration: InputDecoration(
                  
                  border: InputBorder.none,
                  hintText: 'Promo Code',
                  prefixIcon: Icon(Icons.square_rounded,size: 30,color: Colors.black,),
                  suffixIcon: Container(
                    padding:EdgeInsets.all(1),
                    width: 120,
                    height: 38,
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.black,
                  //border: Border.all(color: Colors.black54,width: 2,),
                  ),
                  child: Center(child: Text('Apply',style: GoogleFonts.montserrat(color: Colors.white,fontSize: 22,fontWeight: FontWeight.w600),),),
                  ),
                ),
              ),
             ),
             const SizedBox(height: 22,),
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Item total',style: GoogleFonts.montserrat(color: Colors.black54,fontSize: 22,fontWeight: FontWeight.w600),),
                Text('\$70.50',style: GoogleFonts.montserrat(color: Colors.black54,fontSize: 22,fontWeight: FontWeight.w600),),
              ],
             ),
             const SizedBox(height: 18,),
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Delivery',style: GoogleFonts.montserrat(color: Colors.black54,fontSize: 22,fontWeight: FontWeight.w600),),
                Text('Free',style: GoogleFonts.montserrat(color: Colors.black54,fontSize: 22,fontWeight: FontWeight.w600),),
              ],
             ),
             const SizedBox(height: 18,),
             Divider(color:Colors.black87,height: 4,),
              const SizedBox(height: 24,),
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Item total',style: GoogleFonts.montserrat(color: Colors.black,fontSize: 22,fontWeight: FontWeight.bold),),
                Text(cartProvider.totalPrice.toString(),style: GoogleFonts.montserrat(color: Colors.black,fontSize: 22,fontWeight: FontWeight.bold),),
              ],
             ),
                const SizedBox(height: 25,),
                  Container(
                    padding: EdgeInsets.all(5),
                    height: 60,
                    //width: 160,
                    decoration: BoxDecoration(
                    
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.black,
                    border: Border.all(color: Colors.black,width: 1)
                  ),
                    child: Center(child: Text('Payment',style: GoogleFonts.montserrat(color: Colors.white,fontSize: 20),)),
                  ),

            ],
            

          ),
        ),
      ),
    );
  }
}