import 'package:flutter/material.dart';
import 'makanan.dart';
import 'detail_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Menu Kuliner"),
          backgroundColor: const Color.fromARGB(255, 196, 0, 0),
          titleTextStyle: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 255, 255, 255)),
        ),
        body: ListView.builder(
          itemCount: daftarMakanan.length,
          itemBuilder: (context, index) {
            final makanan = daftarMakanan[index];
            return Card(
              margin: EdgeInsets.symmetric(
                  horizontal: 16, vertical: 8), // Memberikan jarak antar Card
              shape: RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.circular(12), // Membuat Card lebih melengkung
              ),
              elevation: 4, // Memberikan bayangan pada Card
              child: ListTile(
                contentPadding:
                    EdgeInsets.all(16), // Memberikan padding internal pada Card
                leading: ClipRRect(
                  borderRadius:
                      BorderRadius.circular(8), // Membuat gambar melengkung
                  child: Image.asset(
                    makanan.gambar,
                    width: 50,
                    height: 50,
                    fit: BoxFit.cover,
                  ),
                ),
                title: Text(
                  makanan.nama,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text(makanan.deskripsi,
                    maxLines: 2, overflow: TextOverflow.ellipsis),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailPage(
                        namaMakanan: makanan.nama,
                        gambar: makanan.gambar,
                        deskripsi: makanan.deskripsi,
                        bahanRacikan:
                        makanan.bahanRacikan, 
                        imageList: makanan.carouselImages,
                      ),
                    ),
                  );
                },
              ),
            );
          },
        ));
  }
}
