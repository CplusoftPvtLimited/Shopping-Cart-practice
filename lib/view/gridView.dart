import 'package:flutter/material.dart';

class GrridView extends StatefulWidget {
  const GrridView({super.key});

  @override
  State<GrridView> createState() => _GrridViewState();
}

class _GrridViewState extends State<GrridView> {
   List<String> images = [  
    "assets/seven.jpeg",  
    "assets/eight.jpeg",  
    "assets/food.webp",  
    "assets/six.jpeg",
  ];  
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(  
        appBar: AppBar(  
          title: Text("Flutter GridView Demo"),  
          backgroundColor: Colors.red,  
        ),  
        body: Container(  
            padding: EdgeInsets.all(12.0),  
            child: GridView.builder(  
              itemCount: images.length,  
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(  
                  crossAxisCount: 2,  
                  crossAxisSpacing: 2.0,  
                  mainAxisSpacing: 4.0  ,
                  mainAxisExtent: 250
              ),  
              itemBuilder: (BuildContext context, int index){  
                return SingleChildScrollView(
                  child: Container(
                    //color: Colors.amber,
                    //height: 300,
                    //padding: EdgeInsets.all(0),
                    child: Column(
                      children: [
                        Container(
                          color: Colors.green,
                          
                          child: Image.asset(images[index],fit: BoxFit.cover,height: 150,width: 150,),),
                        Text('Original Sushi',style: TextStyle(fontSize: 22,),),
                        SizedBox(height: 2,),
                        Row(
                          children: [
                            SizedBox(width: 35,),
                            Text("'\$100",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
                            SizedBox(width: 35,),
                            Icon(Icons.shopping_cart_outlined),
                          ],
                        ),
                      ],
                    ),
                  ),
                );  
              },  
            ),
            ),  
      ),  
    );  
  }  
}  