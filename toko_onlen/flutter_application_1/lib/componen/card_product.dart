import 'package:flutter/material.dart';
import 'package:flutter_application_1/componen/rating_product.dart';


class CardProduk extends StatelessWidget {
  const CardProduk({
    super.key,
    required this.namaProduk,
    required this.Harga,
    this.Stok,
    this.warna,
    
  });
final String namaProduk;
final double Harga;
final int? Stok;
final Color? warna;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        color: warna ?? const Color.fromARGB(255, 147, 227, 149),
        height: 250,
        width: 200,
        child: Center(
          child: Column(
            children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(radius: 50,),
            ),
            Text('$namaProduk'),
            Text('Harga: $Harga'),
            Text('Stok: ${Stok?? 0}'),
            RatingWidget()
            
          ],
        )
       )
      ),
    );
  }
}

