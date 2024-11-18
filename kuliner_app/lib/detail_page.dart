import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  final String namaMakanan;
  final String gambar;
  final String deskripsi;
  final List<Map<String, String>> bahanRacikan; // Tambahkan ini
  final List<String> imageList;

  const DetailPage({
    Key? key,
    required this.namaMakanan,
    required this.gambar,
    required this.deskripsi,
    required this.bahanRacikan,
    required this.imageList,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(namaMakanan),
        backgroundColor: const Color.fromARGB(255, 196, 0, 0),
        titleTextStyle: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 255, 255, 255)),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Bagian Gambar Utama
            Stack(
              children: [
                Image.asset(
                  gambar,
                  fit: BoxFit.cover,
                  height: 250,
                  width: double.infinity,
                ),
              ],
            ),

            // Nama Makanan
            Padding(
              padding: const EdgeInsets.all(23.0),
              child: Text(
                namaMakanan,
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            // Carousel Slider
            SizedBox(
              height: 150, // Tinggi carousel
              child: PageView.builder(
                itemCount: imageList.length,
                controller: PageController(viewportFraction: 0.9), // Efek zoom
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.symmetric(horizontal: 6.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: Image.asset(
                        imageList[index],
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                },
              ),
            ),

            const SizedBox(height: 16),

            // Informasi Tambahan
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _infoItem(Icons.access_time, "Waktu Buka", "07:00 - 21:00"),
                  _infoItem(Icons.local_fire_department, "Kalori", "300 kcal"),
                  _infoItem(Icons.monetization_on, "Harga", "Rp 25.000"),
                ],
              ),
            ),

            const SizedBox(height: 16),

            // Deskripsi
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                deskripsi,
                style: TextStyle(fontSize: 16, color: Colors.grey[800]),
                textAlign: TextAlign.center,
              ),
            ),

            // Bahan Racikan
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                "Bahan Racikan",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            Container(
              height: 100,
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: bahanRacikan.length,
                itemBuilder: (context, index) {
                  return _bahanItem(
                    bahanRacikan[index]["gambar"]!,
                    bahanRacikan[index]["namaBahan"]!,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Widget untuk Informasi
  Widget _infoItem(IconData icon, String title, String subtitle) {
    return Column(
      children: [
        Icon(icon, size: 40, color: const Color.fromARGB(255, 184, 9, 0)),
        SizedBox(height: 4),
        Text(
          title,
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
        ),
        Text(
          subtitle,
          style: TextStyle(fontSize: 12, color: Colors.grey[700]),
        ),
      ],
    );
  }

  // Widget untuk Bahan Racikan
  Widget _bahanItem(String gambar, String bahan) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        children: [
          CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage(gambar), // Gambar dari asset
            backgroundColor: Colors.transparent,
          ),
          SizedBox(height: 8),
          Text(
            bahan,
            style: TextStyle(fontSize: 14),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

Widget _infoItem(IconData icon, String title, String subtitle) {
  return Column(
    children: [
      Icon(icon, size: 40, color: Colors.red),
      SizedBox(height: 4),
      Text(
        title,
        style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
      ),
      Text(
        subtitle,
        style: TextStyle(fontSize: 12, color: Colors.grey),
      ),
    ],
  );
}
