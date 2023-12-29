import 'package:ecommerce/components/shoeTile.dart';
import 'package:ecommerce/models/cart.dart';
import 'package:ecommerce/models/shoe.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
 void addShoeToCart(Shoe shoe){
Provider.of<Cart>(context, listen: false).addItemtoCart(shoe);

showDialog(       
  context: context, 
builder: (context)=>const AlertDialog(
title: Text('sucessfully added'),
content: Text('check your cart'),

),
);

 }
 
 
 
  @override
  Widget build(BuildContext context) {
  return Consumer<Cart>(builder: (context, value, child) => Column(
      children: [
        //searchbar
        Container(
          padding: const EdgeInsets.all(20),
          margin: const EdgeInsets.symmetric(horizontal: 24),
          decoration: BoxDecoration(
              color: Colors.grey[200], borderRadius: BorderRadius.circular(10)),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Search',
                style: TextStyle(color: Colors.grey),
              ),
              Icon(
                Icons.search,
                color: Colors.grey,
              ),
            ],
          ),
        ),
//message
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 24.0),
          child: Text(
            'everyone flies..some fly longer than others',
            style: TextStyle(color: Colors.grey),
          ),
        ),

//Hot pics
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Hot Picks🔥',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
              Text(
                'see all',
                style:
                    TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),

        const SizedBox(height: 10),

        Expanded(
          child: ListView.builder(
            itemCount: 9,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              Shoe shoe = value.getShoeList()[index];
              return ShoeTile(
                shoe: shoe,
                onTap: () => addShoeToCart(shoe),
              );
            },
          ),
        ),

       const  Padding(
          padding: EdgeInsets.only(top: 24.0),
          child: Divider(color: Colors.white,
          ),
        ),
      ],
    ),);
  }
}
