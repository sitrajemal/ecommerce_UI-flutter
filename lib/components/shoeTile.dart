import 'package:ecommerce/models/shoe.dart';
import 'package:flutter/material.dart';

class ShoeTile extends StatelessWidget {
  Shoe shoe;
  void Function()? onTap;
  ShoeTile({super.key, required this.shoe,required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 24),
      width: 200,
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(12),
      ),
      child:
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween, 
            children: [
//shoe picture
        ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Image.asset(
            shoe.imagePath,
          ),
        ),

        //description
        Padding(
          padding: const EdgeInsets.symmetric(horizontal:24.0),
          child: Text(
            shoe.description,
            style: const TextStyle(color: Colors.grey),
          ),
        ),

        Padding(
          padding: const EdgeInsets.all(24.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    shoe.name,
                    style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    '\$' + shoe.price,
                    style: const TextStyle(fontSize: 14, color: Colors.grey),
                  ),
                ],
              ),
              GestureDetector(
                onTap: onTap,
                child: Container(
                    decoration: const BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(12),
                        bottomRight: Radius.circular(12),
                      ),
                    ),
                    padding: const EdgeInsets.all(10),
                    child: const Icon(
                      Icons.add,
                      color: Colors.white,
                    )),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
