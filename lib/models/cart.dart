import 'dart:convert';
import 'dart:ffi';
import 'package:flutter/material.dart';

import 'package:flutter/cupertino.dart';

final List<Cart> cartList =[
  Cart(title: 'Nike Waffle         One SE', color1: Colors.blue, color2: Colors.red, price: '159', isChecked: true, image: 'assets/images/s4.jpg' ),
  Cart(title: 'Nike Legend Essential',color1: Colors.purple, color2: Colors.red, price: '159', isChecked: false, image: 'assets/images/s5.jpg' ),
  Cart(title: 'Air Forece 1        One EW',color1: Colors.grey, color2: Colors.red, price: '159', isChecked: false, image: 'assets/images/s6.jpg' ),
  Cart(title: 'Air Max 1          One Essential', color1: Colors.black, color2: Colors.red, price: '159', isChecked: false, image: 'assets/images/s7.jpg' )
  ,Cart(title: 'Nike Waffle         One SE', color1: Colors.blue, color2: Colors.red, price: '159', isChecked: true, image: 'assets/images/s6.jpg' ),
  Cart(title: 'Nike Legend Essential',color1: Colors.purple, color2: Colors.red, price: '159', isChecked: false, image: 'assets/images/s4.jpg' ),
  Cart(title: 'Air Forece 1        One EW',color1: Colors.grey, color2: Colors.red, price: '159', isChecked: false, image: 'assets/images/s7.jpg' ),
  Cart(title: 'Air Max 1          One Essential', color1: Colors.black, color2: Colors.red, price: '159', isChecked: false, image: 'assets/images/s8.jpg' )

];

class Cart {
  final String title;
  final Color color1;
  final Color color2;
  final String image;
  final String price;
  final bool isChecked;
  Cart({
    required this.title,
    required this.color1,
    required this.color2,
    required this.image,
    required this.price,
    required this.isChecked,
  });

  Cart copyWith({
    String? title,
    Color? color1,
    Color? color2,
    String? image,
    String? price,
    bool? isChecked,
  }) {
    return Cart(
      title: title ?? this.title,
      color1: color1 ?? this.color1,
      color2: color2 ?? this.color2,
      image: image ?? this.image,
      price: price ?? this.price,
      isChecked: isChecked ?? this.isChecked,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};
  
    result.addAll({'title': title});
    result.addAll({'color1': color1.value});
    result.addAll({'color2': color2.value});
    result.addAll({'image': image});
    result.addAll({'price': price});
    result.addAll({'isChecked': isChecked});
  
    return result;
  }

  factory Cart.fromMap(Map<String, dynamic> map) {
    return Cart(
      title: map['title'] ?? '',
      color1: Color(map['color1']),
      color2: Color(map['color2']),
      image: map['image'] ?? '',
      price: map['price'] ?? '',
      isChecked: map['isChecked'] ?? false,
    );
  }

  String toJson() => json.encode(toMap());

  factory Cart.fromJson(String source) => Cart.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Cart(title: $title, color1: $color1, color2: $color2, image: $image, price: $price, isChecked: $isChecked)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is Cart &&
      other.title == title &&
      other.color1 == color1 &&
      other.color2 == color2 &&
      other.image == image &&
      other.price == price &&
      other.isChecked == isChecked;
  }

  @override
  int get hashCode {
    return title.hashCode ^
      color1.hashCode ^
      color2.hashCode ^
      image.hashCode ^
      price.hashCode ^
      isChecked.hashCode;
  }
}
