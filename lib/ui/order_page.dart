import 'package:flutter/material.dart';
import 'package:jajan_yuk_app/models/product.dart';

class OrderPage extends StatefulWidget {
  final Product product;

  const OrderPage({super.key, required this.product});

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  bool isLiked = false; //buat icon love favorite

  final TextEditingController qtyController = TextEditingController();

  int totalHarga = 0; //integral buat total harga

  // fungsi logika hitung total
  void _hitungTotal() {
    int qty = int.tryParse(qtyController.text) ?? 0; 

    setState(() {
      totalHarga = qty * widget.product.price.toInt();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF2F2F2),

      body: SafeArea(
        child: Column( //kolom karena ke bawah jadi dibagi menjadi padding atas, image/clipoval, nama, harga, deskripsi, input jumlah, total harga)
          children: [

            // header halaman order (arrow back, judul halaman, icon favorite)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Row( //row karena ke samping
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  // style icon arrow back dan logika
                  IconButton(
                    icon: const Icon(Icons.arrow_back),
                    onPressed: () => Navigator.pop(context),
                  ),

                  const Text(
                    "Detail Order",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  // style icon love favorite dan logika
                  IconButton(
                    icon: Icon(
                      isLiked ? Icons.favorite : Icons.favorite_border,
                      color: isLiked ? Colors.red : Colors.black,
                    ),
                    onPressed: () {
                      setState(() {
                        isLiked = !isLiked;
                      });
                    },
                  ),
                ],
              ),
            ),

            // style image productnya
            ClipOval(
              child: Image.network(
                widget.product.image,
                height: 240,
                width: 230,
                fit: BoxFit.cover,
              ),
            ),

            const SizedBox(height: 0),

            // style nama productnya
            Text(
              widget.product.name,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 5),

            // style harga productnya
            Text(
              "Rp ${widget.product.price.toStringAsFixed(0)}",
              style: const TextStyle(
                color: Color(0xFFFF4A3A),
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 20),

            // style deskripsi productnya
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Deskripsi",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    widget.product.description,
                    style: const TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),

            // ini buat input jumlah
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextField(
                controller: qtyController, //ini buat
                keyboardType: TextInputType.number,
                onChanged: (value) => (){}, //kalo input jumlah blm berubah total harganya
                decoration: InputDecoration(
                  hintText: "Masukkan Jumlah",
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 15,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: const BorderSide(
                      color: Color(0xFFFF4A3A),
                      width: 2,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: const BorderSide(
                      color: Color(0xFFFF4A3A),
                      width: 2,
                    ),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 20),

            // ini style dan logika button submit
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: ElevatedButton(
                onPressed: () {
                  _hitungTotal();

                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text("Order successful!"),
                      backgroundColor: const Color.fromARGB(255, 30, 149, 26),
                      behavior: SnackBarBehavior.floating,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFFF4A3A),
                  minimumSize: const Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                child: const Text(
                  "Submit",
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
            ),

            const SizedBox(height: 20),

            // untuk logika dan style total harga
            Text(
              "Total Harga Rp $totalHarga",
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}