class Makanan {
  final String nama;
  final String gambar;
  final String deskripsi;
  final List<Map<String, String>> bahanRacikan;
  final List<String> carouselImages;

  Makanan({
    required this.nama,
    required this.gambar,
    required this.deskripsi,
    required this.bahanRacikan,
    required this.carouselImages,
  });
}

final List<Makanan> daftarMakanan = [
  Makanan(
    nama: 'Bubur Ayam',
    gambar: 'assets/bubur.jpg',
    deskripsi: 'Bubur ayam khas Jakarta sangat enak untuk dinikmati.',
    bahanRacikan: [
      {"gambar": "assets/bahan/ayam.png", "namaBahan": "Ayam"},
      {"gambar": "assets/bahan/bawang.png", "namaBahan": "Bawang"},
      {"gambar": "assets/bahan/kecap.png", "namaBahan": "Kecap"},
      {"gambar": "assets/bahan/telur.png", "namaBahan": "Telur"},
      {"gambar": "assets/bahan/tepung.png", "namaBahan": "Tepung"},
      {"gambar": "assets/bahan/tomat.png", "namaBahan": "Tomat"},
    ],
    carouselImages: [
      // Gambar untuk carousel
      'assets/bubur1.jpg',
      'assets/bubur2.jpg',
      'assets/bubur3.jpg',
    ],
  ),
  Makanan(
    nama: 'Pecel Jogja',
    gambar: 'assets/pecel.jpg',
    deskripsi: 'Pecel khas DIY sangat enak untuk dinikmati.',
    bahanRacikan: [
      {"gambar": "assets/bahan/sayur.png", "namaBahan": "Sayur"},
      {"gambar": "assets/bahan/telur.png", "namaBahan": "Telur"},
      {"gambar": "assets/bahan/tahu.png", "namaBahan": "Tahu"},
      {"gambar": "assets/bahan/cabai.png", "namaBahan": "Cabai"},
      {"gambar": "assets/bahan/kacang.png", "namaBahan": "Kacang"},
      {"gambar": "assets/bahan/kecap.png", "namaBahan": "Kecap"},
    ],
    carouselImages: [
      // Gambar untuk carousel
      'assets/pecel1.jpg',
      'assets/pecel2.jpg',
      'assets/pecel3.jpg',
    ],
  ),
  Makanan(
    nama: 'Soto Ayam',
    gambar: 'assets/soto.jpg',
    deskripsi: 'Soto ayam khas Kudus sangat enak untuk dinikmati.',
    bahanRacikan: [
      {"gambar": "assets/bahan/telur.png", "namaBahan": "Telur"},
      {"gambar": "assets/bahan/daunBawang.png", "namaBahan": "Daun Bawang"},
      {"gambar": "assets/bahan/sayur.png", "namaBahan": "Sayur"},
      {"gambar": "assets/bahan/tahu.png", "namaBahan": "Tahu"},
      {"gambar": "assets/bahan/kecap.png", "namaBahan": "Kecap"},
      {"gambar": "assets/bahan/ayam.png", "namaBahan": "Ayam"},
    ],
    carouselImages: [
      // Gambar untuk carousel
      'assets/soto1.jpg',
      'assets/soto2.jpg',
      'assets/soto3.jpg',
    ],
  ),
];
