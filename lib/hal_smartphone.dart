import 'package:flutter/material.dart';

class Smartphone extends StatelessWidget {
  // List contoh URL gambar; ganti dengan URL gambar Anda atau sumber gambar lokal
  final List<String> imageUrls = [
    'https://smkn4bogor.sch.id/assets/images/logo/pplg.png',
    'https://smkn4bogor.sch.id/assets/images/background/smkn4bogor_2.jpg',
    'https://mmc.tirto.id/image/2020/04/29/istock-1091348950-copy_ratio-16x9.jpg',
    'https://cdn-wordpress-info.futurelearn.com/wp-content/uploads/Coding_Blog_Header_1500x750.jpg.optimal.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:  Color.fromARGB(213, 153, 195, 182),
        title: Text('Galeri PPLG'),
        centerTitle: true,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.teal.shade100, Color.fromARGB(255, 255, 255, 255)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        padding: EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
          
            SizedBox(height: 20.0),
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, // Jumlah kolom
                  crossAxisSpacing: 10.0, // Jarak antar kolom
                  mainAxisSpacing: 10.0, // Jarak antar baris
                ),
                itemCount: imageUrls.length,
                itemBuilder: (context, index) {
                  return ClipRRect(
                    borderRadius: BorderRadius.circular(12.0), // Sudut membulat
                    child: Container(
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.2),
                            spreadRadius: 2,
                            blurRadius: 4,
                            offset: Offset(0, 2), // perubahan posisi bayangan
                          ),
                        ],
                      ),
                      child: Image.network(
                        imageUrls[index],
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
