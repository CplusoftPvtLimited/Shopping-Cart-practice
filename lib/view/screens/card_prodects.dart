import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardProducts extends StatefulWidget {
  const CardProducts({super.key});

  @override
  State<CardProducts> createState() => _CardProductsState();
}

class _CardProductsState extends State<CardProducts> {
  List<String> cardProdects = [
              
              'https://www.freepnglogos.com/uploads/food-png/fast-food-transparent-png-pictures-icons-and-png-18.png',
              'https://www.freepnglogos.com/uploads/food-png/beer-food-the-portsmouth-brewery-26.png',
              'https://www.freepnglogos.com/uploads/food-png/junk-food-archives-classic-0.png', 
              'https://www.freepnglogos.com/uploads/food-png/food-plate-png-transparent-image-pngpix-14.png',
              'https://www.freepnglogos.com/uploads/food-png/food-grass-fed-beef-foodservice-products-grass-run-farms-4.png',
              'https://www.freepnglogos.com/uploads/food-png/fast-food-transparent-png-pictures-icons-and-png-18.png',
              'https://www.freepnglogos.com/uploads/food-png/beer-food-the-portsmouth-brewery-26.png',  'https://www.freepnglogos.com/uploads/food-png/food-grass-fed-beef-foodservice-products-grass-run-farms-4.png',
              'https://www.freepnglogos.com/uploads/food-png/fast-food-transparent-png-pictures-icons-and-png-18.png',
              'https://www.freepnglogos.com/uploads/food-png/beer-food-the-portsmouth-brewery-26.png'  ,          
  ];   
  List<String> prodectsPrice = [
              'N1,700',   
              'N2,300',
              'N3,800',   
              'N4,200',
              'N5,600',   
              'N6,200',
              'N7,200',   
              'N8,900',
              'N9,350',   
              'N0,590',
   ];   
   List<String> prodectsDescription = [
              'Saky Neodkes',   
              'Stripes Pasta',
              'Vegetables Cuerry',   
              'Moised',
              'Chicken Pasta',   
              'Vegetable Pasta',
              'Chicken Noodels',   
              'Sahi Daal',
              'Chicken Noodels',   
              'Sahi Daal',
   ]; 
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(208, 255, 255, 255),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
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
                        
                        Text('Products',style: GoogleFonts.montserrat(color: Colors.black,fontSize: 28,fontWeight: FontWeight.bold),),
                        Container(
                        height: 46,
                        width: 46,
                        
                        //height: 20,
                        decoration: const BoxDecoration(
                          //borderRadius: BorderRadius.circular(50),
                          color: Colors.white,
                          shape: BoxShape.circle,
             
                        ),
                        child:const InkWell(
                         /* onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>CartFood()));
                          },*/
                          child: Icon(Icons.shopping_cart_outlined,size: 27,opticalSize: 50,weight: 100,color: Colors.black,)),
                          ),
                      
                    ],
                  ),
                  const SizedBox(height: 20,),
                  
                  
                  Expanded(
                    //flex: 2,
                    child: GridView.builder(
                      itemCount: cardProdects.length,
                    gridDelegate:const  SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,  
                    crossAxisSpacing: 2.0,  
                    mainAxisSpacing: 4.0  ,
                    mainAxisExtent: 200
                  ),
                    itemBuilder: (context, index)
                    {
                      return Stack(
                        //fit: StackFit.expand,
                         children: [
                          Card(
                          //margin: EdgeInsets.all(25),
                          shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            //mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                margin: EdgeInsets.all(38),
                                height: 60,
                                width: 180,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(50),
                                  child: Image.network(cardProdects[index],
                                  //fit:BoxFit.fill,
                                  ),
                                ),
                                ),
                                Text(prodectsDescription[index],style: GoogleFonts.montserrat(color: Colors.black,fontSize: 15,fontWeight: FontWeight.w700),),
                                
                                Text(prodectsPrice[index],style: GoogleFonts.montserrat(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w700),),
                           
                            ],
                          ),
                         ),
                        Positioned(
                           top: 15,
                           right: 30,
                           child: Container(
                           child: Icon(Icons.favorite,size: 30,color: Colors.red,),
              ),
            ),

                         ],
                        );
                    }
                    ),
                  ),
                ],  
              
                
          ),
        ),
      ),
    );
  }
}