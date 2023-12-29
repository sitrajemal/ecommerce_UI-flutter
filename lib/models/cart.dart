import 'package:ecommerce/models/shoe.dart';
import 'package:flutter/material.dart';

class Cart extends ChangeNotifier{
//list of shoes for sale
List<Shoe> shoeShop = [
Shoe(
  name: 'Royela', 
  price: '249', 
  imagePath: 'lib/images/SH3-removebg-preview.png', 
  description: ' The forward-thinking design of his latest signature shoe'
  ),

  Shoe(
  name: 'Nike', 
  price: '309', 
  imagePath: 'lib/images/nike1new.jpg', 
  description: ' Make your brand fashionable with nike '
  ),
  Shoe(
  name: 'Vana', 
  price: '449', 
  imagePath: 'lib/images/download.jpg', 
  description: ' use in differences'
  ),
   Shoe(
  name: 'Kyrie 4', 
  price: '149', 
  imagePath: 'lib/images/images.png', 
  description: ' The forward-thinking design of his latest signature shoe'
  ),

Shoe(
  name: 'Kyrie 7', 
  price: '179', 
  imagePath: 'lib/images/images.jpg', 
  description: ' make your trip full'
  ),

  Shoe(
  name: 'AllWear', 
  price: '4890', 
  imagePath: 'lib/images/downloady.jpg', 
  description: ' Comfortable_Seasonal',
  ),

  Shoe(
  name: 'Nike20', 
  price: '879', 
  imagePath: 'lib/images/niky.jpg', 
  description: 'Of all seasons'
  ),

Shoe(
  name: 'ShudaG', 
  price: '900', 
  imagePath: 'lib/images/sandB.jpg', 
  description: 'Grab it'
  ),

Shoe(
  name: 'Booties', 
  price: '292', 
  imagePath: 'lib/images/kat-maconie-ankle-boots.jpg', 
  description: 'Get summer gift'
  ),




];
//list of items in user

List<Shoe> userCart = [];

//get list of shoes for sale

List<Shoe> getShoeList(){
return shoeShop;

}






//get cart
List<Shoe> getUserCart(){
return userCart;

}


//add items to cart
void  addItemtoCart(Shoe shoe){

  userCart.add(shoe);
  notifyListeners();

}



//remove item from cart

void  removeItemFromCart(Shoe shoe){

  userCart.remove(shoe);
  notifyListeners();
}




}