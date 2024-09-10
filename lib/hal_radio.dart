import 'package:flutter/material.dart';

class AgendaScreen extends StatelessWidget {
  // Daftar agenda acara PPLG
  final List<Map<String, String>> events = [
    {'title': 'Workshop Coding Dasar', 'date': '15 September 2024'},
    {'title': 'Seminar Pengembangan Software', 'date': '17 September 2024'},
    {'title': 'Pameran Proyek Akhir PPLG', 'date': '30 September 2024'},
    {'title': 'Kegiatan Praktikum Jaringan', 'date': '20 September 2024'},
    {'title': 'Hari Keahlian Teknologi', 'date': '5 Oktober 2024'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(213, 153, 195, 182),
        title: const Text('Agenda PPLG'),
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
        child: ListView.builder(
          padding: EdgeInsets.symmetric(vertical: 10.0),
          itemCount: events.length,
          itemBuilder: (context, index) {
            final event = events[index];
            return _buildAgendaCard(event['title']!, event['date']!);
          },
        ),
      ),
    );
  }

  Widget _buildAgendaCard(String title, String date) {
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
          style: const TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        subtitle: Text(
          date,
          style: const TextStyle(color: Colors.black54),
        ),
        leading: const Icon(Icons.computer, size: 40.0, color: Colors.teal), // Icon adjusted for tech theme
      ),
    );
  }
}
