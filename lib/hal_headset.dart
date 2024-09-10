import 'package:flutter/material.dart';

class Headset extends StatelessWidget {
  const Headset({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(213, 153, 195, 182),
        title: const Text('Informasi PPLG'),
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
        child: ListView(
          padding: const EdgeInsets.all(16.0),
          children: <Widget>[
            _buildHeadsetCard('Kursus Dasar Pemrograman', '1 Oktober 2024'),
            _buildHeadsetCard('Pelatihan Framework Web', '10 Oktober 2024'),
            _buildHeadsetCard('Workshop Aplikasi Mobile', '15 Oktober 2024'),
            _buildHeadsetCard('Ujian Proyek Akhir Semester', '25 Oktober 2024'),
          ],
        ),
      ),
    );
  }

  Widget _buildHeadsetCard(String title, String description) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      elevation: 5.0, // Add some elevation to give the card a floating effect
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0), // Rounded corners
      ),
      child: ListTile(
        contentPadding: const EdgeInsets.all(16.0),
        title: Text(
          title,
          style: const TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
        ),
        subtitle: Text(description),
        leading: Icon(
          Icons.event,
          size: 40.0,
          color: Colors.teal, // Set the icon color to Colors.teal
        ),
      ),
    );
  }
}
