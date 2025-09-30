import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Marker> markersSP = [
      Marker(
        width: 40,
        height: 40,
        point: LatLng(-23.5300, -46.7053), // SENAC Tito
        child: Icon(
          Icons.location_on,
          color: Colors.blue,
          size: 40,
        ),
      ),
      Marker(
        width: 40,
        height: 40,
        point: LatLng(-23.54315105, -46.76319147758228), // Duckbill OSASCO
        child: Icon(
          Icons.location_on,
          color: Colors.green, 
          size: 40,
        ),
      ),
      Marker(
        width: 40,
        height: 40,
        point: LatLng(-23.58608545, -46.66190963338509), // Pavilhão Japonês
        child: Icon(
          Icons.location_on,
          color: Colors.orange,
          size: 40,
        ),
      ),
      Marker(
        width: 40,
        height: 40,
        point: LatLng(-23.70182445, -46.69691577416339), // Autódromo de Interlagos
        child: Icon(
          Icons.location_on,
          color: Colors.purple,
          size: 40,
        ),
      ),
      Marker(
        width: 40,
        height: 40,
        point: LatLng(-23.5422994, -46.4712065), // VAI CORINTHIANS
        child: Icon(
          Icons.location_on,
          color: Colors.black,
          size: 40,
        ),
      ),
    ];

    return Scaffold(
      appBar: AppBar(title: const Text("Mapa SP")),
      body: FlutterMap(
        options: MapOptions(
          initialCenter: LatLng(-23.5505, -46.6333),
          initialZoom: 10,
        ),
        children: [
          TileLayer(
            urlTemplate: 'https://{s}.tile.openstreetmap.de/{z}/{x}/{y}.png',
            subdomains: ['a', 'b', 'c'],
            userAgentPackageName: 'com.example.atividade_mapa',
          ),
          // 2. Passe a lista de markers diretamente para o MarkerLayer
          MarkerLayer(markers: markersSP),
        ],
      ),
    );
  }
}
