import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
      List<LatLng> pontosSP = [
      LatLng(-23.5300, -46.7053), // SENAC Tito
      LatLng(-23.54315105, -46.76319147758228), // Duckbill OSASCO
      LatLng(-23.58608545, -46.66190963338509), // Pavilhão Japonês
      LatLng(-23.70182445, -46.69691577416339), // Autódromo de Interlagos
      LatLng(-23.5422994, -46.4712065), // VAI CORINTHIANS
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
          MarkerLayer(
            markers: pontosSP.map((latLng) {
              return Marker(
                width: 40,
                height: 40,
                point: latLng,
                child: const Icon(
                  Icons.location_on,
                  color: Colors.red,
                  size: 40,
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
