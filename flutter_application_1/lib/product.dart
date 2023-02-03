// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class product extends StatefulWidget {
  var imgpath;

  product({this.imgpath});

  @override
  State<product> createState() => _productState();
}

class _productState extends State<product> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Hero(
            tag: widget.imgpath,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(widget.imgpath), fit: BoxFit.cover)),
            ),
          ),
          
 
          Positioned(
            left: 15,
            right: 15,
            bottom: 15,
            child: Material(
              elevation: 4,
              borderRadius: BorderRadius.circular(15),
              child: Container(
                height: 230,
                width: MediaQuery.of(context).size.width - 30,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Container(
                            height: 110,
                            width: 90,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                    color: Colors.grey.withOpacity(0.2)),
                                image: DecorationImage(
                                    image:
                                        AssetImage("assets/images/dress.jpg"),
                                    fit: BoxFit.contain)),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "LAMINATED",
                              style: TextStyle(
                                  fontSize: 22,
                                  fontFamily: "Montserrat",
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Louis Vuitton",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: "Montserrat",
                                 color: Colors.grey),
                            ),
                            SizedBox(height: 10,),
                            Container(
                              height:55 ,
                              width: MediaQuery.of(context).size.width - 155,
                              child: Text(
                                "One button V-neck sling long-sleeved waist female stitching dress.",
                                style: TextStyle(
                                    fontSize: 14,
                                    fontFamily: "Montserrat",
                                   color: Colors.grey),
                              ),
                            ),
                           

                          ],
                          
                        ),
                         
          
                        
                      ],
                      
                    ),
                    Divider(),
                    Padding(
                      padding: const EdgeInsets.only(left: 20,top: 10,),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                           Text(
                                  "\$6500",
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontFamily: "Montserrat",
                                     ),
                                ),
                                Container(
                                  height: 50,
                                  margin: EdgeInsets.only(right: 25),
                                  child: FloatingActionButton(
                                    onPressed: (){},
                                    backgroundColor: Colors.brown,
                                    child: Icon(Icons.arrow_forward_ios),
                                    ),
                                ),
                        ],
                      ),
                    ),
                    
                  ],
                ),
              ),
            ),
            
          ),
         
        ],
        
      ),
      
    );
  }
}
