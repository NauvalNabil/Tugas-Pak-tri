import 'package:flutter/material.dart';
import 'package:flutter_application_1/componen/card_product.dart';

class DashboardScreen  extends StatefulWidget {
  const DashboardScreen ({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
      ),
      body: ListView(
        children: [
          CardProduk(
            namaProduk: "Mclaren 1",
            Harga: 1245454,
            Stok: 19,
            
            
          ),
          CardProduk(
            namaProduk: "Mclaren 2",
            Harga: 132526,
            Stok: 12,
          ),
          CardProduk(
            namaProduk: "Mclaren 3",
            Harga: 1126462,
            Stok: 14,
          ),
          CardProduk(
            namaProduk: "Mclaren 4",
            Harga: 1112452,
            Stok: 1,
            ),
            

        ],
      )
    );
    
  }
}

