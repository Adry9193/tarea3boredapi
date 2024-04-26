import 'package:flutter/material.dart';
import 'package:tarea3boredapidio/api/api_service.dart'; 
import 'package:tarea3boredapidio/models/bored.dart'; 
import '../widget/bored_widget.dart'; 

class BoredActivityScreen extends StatefulWidget {
  @override
  _BoredActivityScreenState createState() => _BoredActivityScreenState();
}

class _BoredActivityScreenState extends State<BoredActivityScreen> {
  late BoredActivity _boredActivity;
  final ApiService _apiService = ApiService();

  @override
  void initState() {
    super.initState();
    _loadBoredActivity();
  }

  Future<void> _loadBoredActivity() async {
    try {
      final boredActivity = await _apiService.getAllBoredActivity();
      setState(() {
        _boredActivity = boredActivity;
      });
    } catch (e) {
      print('Error loading bored activity: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bored Activity'),
        backgroundColor: Colors.blue, // Color de fondo de la AppBar
      ),
      body: _boredActivity != null
          ? _buildActivityDetails() // Mostrar detalles de la actividad
          : Center(
              child: CircularProgressIndicator(),
            ),
    );
  }

  Widget _buildActivityDetails() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildDetailRow('Activity', _boredActivity.activity),
          _buildDetailRow('Type', _boredActivity.type),
          _buildDetailRow('Participants', _boredActivity.participants.toString()),
          _buildDetailRow('Price', _boredActivity.price.toString()),
          _buildDetailRow('Accessibility', _boredActivity.accessibility.toString()),
          _buildDetailRow('Link', _boredActivity.link),
        ],
      ),
    );
  }

  Widget _buildDetailRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            '$label:',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.blue, // Color del texto de la etiqueta
            ),
          ),
          Expanded(
            child: Text(
              value,
              style: TextStyle(
                fontSize: 16,
                color: Colors.black87, // Color del texto del valor
              ),
            ),
          ),
        ],
      ),
    );
  }
}

