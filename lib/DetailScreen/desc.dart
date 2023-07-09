// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:onlinestore/bottom-navigation/NavigationBar.dart';
import 'package:onlinestore/model.dart';

class ProductDetailPage extends StatefulWidget {
  final Product product;

  const ProductDetailPage({required this.product});

  @override
  State<ProductDetailPage> createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage> {
  int currentIndex=0;

  void onTabTapped(int index){
    setState(() {
      currentIndex=index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      
      body:Stack(
        children: [
          Positioned(
            left: 0,
            right: 0,
            child:Container(
              width: double.maxFinite,
              height: 350,
              
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.contain,
                  image: NetworkImage(widget.product.image)
                  
                )
              ) ,

            ) 
          ),
        Positioned(
          top: 45,
          left:20,
          right:20 ,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                child: Container(
                  width: 32,
                  height: 32,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(150/2),
                    color: Colors.white30
                  ),
                  child: const Icon(
                    Icons.arrow_back_ios,
                    color: Colors.black,
                    size: 16,
                  ),
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              Container(
                width: 32,
                height: 32,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(150/2),
                  color: Colors.white24
                ),
                child: const Icon(
                  CupertinoIcons.cart,
                  color: Colors.black,
                  size: 16,
                ),
              )
            ],
          )),
        Positioned(
          left: 0,
          right: 0,
          top: 330,
          bottom: 0,
          child: Container(
            padding: const EdgeInsets.only(left:20,right: 20,top:20 ),
            decoration: const BoxDecoration(
              
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight:Radius.circular(20)
              ),
              color:Color.fromARGB(255, 243, 209, 199)
            ),
            child: SingleChildScrollView(
              child: Column(
                
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(widget.product.title,
                  style: const TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize:20 
                  ),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    '\$${widget.product.price.toStringAsFixed(2)}',
                    style: const TextStyle(fontSize: 24,
                    color: Colors.black38),
                  ),
                  const SizedBox(height: 20.0),
                  const Text(
                    'Description: ',
                    style: TextStyle(fontSize: 16,
                    fontWeight: FontWeight.w300),
                  ),
                  const SizedBox(height: 10,),
                  Text(widget.product.description,
                  style: const TextStyle(fontSize: 18,
                  fontWeight: FontWeight.w400,)
                  ,),
                ],
              ),
            ),

          ))
        ],
      ),
     





    );
  }
}
