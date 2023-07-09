

// ignore_for_file: file_names, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:onlinestore/DetailScreen/desc.dart';
import 'package:onlinestore/bottom-navigation/NavigationBar.dart';
import 'package:onlinestore/model.dart';
import 'package:onlinestore/services.dart';


class MyHomePage extends StatefulWidget {
   

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
List<Product> products =[];
List<Product> productDisplay =[];
TextEditingController searchController = TextEditingController();
  bool isSearching = false;

@override
void initState() {
    
    super.initState();
    fetchproduct();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      title: isSearching
            ? TextField(
                controller: searchController,
                onChanged: filterProducts,
                decoration: const InputDecoration(
                  hintText: 'Search',
                ),
              )
            : const Text('Products'),
        actions: [
          if (isSearching)
            IconButton(
              onPressed: cancelSearch,
              icon: const Icon(Icons.clear),
            )
          else
            IconButton(
              onPressed: startSearch,
              icon: const Icon(Icons.search),
            ),
        ],
      ),
    body:ListView.builder(
      itemCount: productDisplay.length,
      itemBuilder: (context,index){

        return Card(
          shadowColor: Colors.black,
          child: ListTile(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder:(context)=>ProductDetailPage(product: productDisplay[index])));
            },
            title: Text(productDisplay[index].title),
            leading: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.network(productDisplay[index].image),
            ),
            trailing:Text('\$${productDisplay[index].price}',
            textScaleFactor: 1.3,
            style: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 220, 110, 240)),
            )
            
          ),
        );
      }
      
      ),
        
      
    );
    
  }

Future<void> fetchproduct() async{
  final response=await ProductApi.fetchproduct();
setState(() {
  products=response;
  productDisplay=response;
});
}


void filterProducts(String query) {
    setState(() {
      productDisplay = products
          .where((product) => product.title.toLowerCase().contains(query.toLowerCase()))
          .toList();
    });
  }

  void startSearch() {
    setState(() {
      isSearching = true;
    });
  }

  void cancelSearch() {
    setState(() {
      isSearching = false;
      searchController.clear();
      productDisplay = products;
    });
  }
}