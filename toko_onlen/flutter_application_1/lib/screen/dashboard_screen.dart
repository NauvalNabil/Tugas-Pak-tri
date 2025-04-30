import 'package:flutter/material.dart';
import 'package:flutter_application_1/componen/card_product.dart';
import 'package:flutter_application_1/profile_screen.dart';


class DashboardScreen extends StatefulWidget {
  final String username;
  const DashboardScreen({super.key, required this.username});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
  backgroundColor: Colors.yellow[900],
  toolbarHeight: 70,
  leadingWidth: 200,
  leading: GestureDetector(
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ProfileScreen(username: widget.username),
        ),
      );
    },
    child: Row(
      children: [
        const SizedBox(width: 10),
        const CircleAvatar(
          radius: 22,
          backgroundColor: Colors.white,
          child: Icon(Icons.account_circle,
              color: Color.fromARGB(255, 165, 176, 185)),
        ),
        const SizedBox(width: 8),
        Text(
          'Halo, ${widget.username}',
          style: const TextStyle(
            color: Colors.white,
            fontSize: 16,
          ),
        ),
      ],
    ),
  ),
),
      body: ListView(
        children: const [
          CardProduk(
          namaProduk: "Mclaren Senna",
          Harga: 3400000.0,
          Stok: 2,
          imageUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS26mufGF_ZzpTKGOv9LCua-sNKnNCLO1y5ag&s",
          imageAlignment: Alignment.topCenter,
          borderRadius: 20.0, 
          ),
          CardProduk(
          namaProduk: "Hennessey venom F5",
          Harga: 5000000.0,
          Stok: 5,
          imageUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTNK9OfSaMf48RNJWqYFI29CPwrF-ayocatig&s",
          imageAlignment: Alignment.topCenter,
          borderRadius: 20.0, 
          ),
          CardProduk(
          namaProduk: "Bugatti Chiron",
          Harga: 4000000.0,
          Stok: 3,
          imageUrl: "https://moladin.com/blog/wp-content/uploads/2023/02/2022-Bugatti-Chiron-Profilee-1-1024x576-1.jpg",
          imageAlignment: Alignment.topCenter,
          borderRadius: 20.0, 
          ),
          CardProduk(
          namaProduk: "Ferrari SF90",
          Harga: 4500000.0,
          Stok: 1,
          imageUrl: "https://res.cloudinary.com/unix-center/image/upload/c_limit,dpr_3.0,f_auto,fl_progressive,g_center,h_240,q_auto:good,w_385/fl7hxq9rczontkgsvvw0.jpg",
          imageAlignment: Alignment.topCenter,
          borderRadius: 20.0, 
          ),
        ],
      ),
    );
  }
}
