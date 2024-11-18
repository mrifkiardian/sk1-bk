import 'package:flutter/material.dart';
import 'makanan.dart';

class ListItem extends StatelessWidget {
  final Makanan makanan;
  final VoidCallback onTap;

  const ListItem({required this.makanan, required this.onTap, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Card(
        child: ListTile(
          leading: Image.asset(
            makanan.gambar,
            width: 50,
            height: 50,
            fit: BoxFit.cover,
          ),
          title: Text(makanan.nama),
          subtitle: Text(makanan.deskripsi),
        ),
      ),
    );
  }
}
