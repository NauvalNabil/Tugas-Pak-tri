import 'package:flutter/material.dart';
import 'package:flutter_application_1/componen/rating_product.dart';


class CardProduk extends StatelessWidget {
  const CardProduk({
    super.key,
    required this.namaProduk,
    required this.Harga,
    this.Stok,
    this.warna,
    this.imageUrl,
    this.imageAlignment = Alignment.topCenter,
    this.borderRadius = 12.0,
  });
final String namaProduk;
final double Harga;
final int? Stok;
final Color? warna;
final String? imageUrl;
final Alignment imageAlignment;
final double borderRadius;
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder( 
        borderRadius: BorderRadius.circular(borderRadius), 
      ),
      child: Container(
        decoration: BoxDecoration(
          color: warna ?? Colors.yellow[900],
          borderRadius: BorderRadius.circular(borderRadius), 
        ),
        height: 250,
        width: 100,
        child: Stack(
          children: [
            if (imageUrl != null)
              Align(
                alignment: imageAlignment,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    width: 500,
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      image: DecorationImage(
                        image: NetworkImage(imageUrl!),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(namaProduk),
                    Text('Harga: $Harga'),
                    Text('Stok: ${Stok ?? 0}'),
                    const SizedBox(height: 8),
                    const RatingWidget(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

