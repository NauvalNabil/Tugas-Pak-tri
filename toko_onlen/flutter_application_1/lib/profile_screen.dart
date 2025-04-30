import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  final String username;

  const ProfileScreen({super.key, required this.username});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        title: const Text(
        "Profil Pengguna",
        style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
      ),
      backgroundColor: const Color(0xFFEAF6FF), 
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            

            
            Text(
              "Nama Pengguna: $username",
              style: const TextStyle(fontSize: 18), 
            ),
            const SizedBox(height: 10),

            const Text(
              "Alamat: Jl. Supercar Raya No. 123, Jakarta",
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 10),

            const Text(
              "Nomor Telepon: 0812-3456-7890",
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 30),

            Center(
              child: ElevatedButton.icon(
                onPressed: () {
                 
                },
                icon: const Icon(Icons.shopping_cart, color: Colors.white), 
                label: const Text(
                  "Keranjang",
                  style: TextStyle(color: Colors.white), 
                ),
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                  backgroundColor: Colors.blue,
                  textStyle: const TextStyle(fontSize: 16),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
