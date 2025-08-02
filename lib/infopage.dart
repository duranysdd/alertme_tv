import 'package:flutter/material.dart';

class InfoPage extends StatelessWidget {
  const InfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    const Color greenPastel = Color(0xFF82FF78);
    const Color greenMilitary = Color(0xFF33693C);

    return Scaffold(
      backgroundColor: greenMilitary,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text(
                  '¿Cómo funciona AlertMe?',
                  style: TextStyle(
                    fontSize: 64,
                    fontWeight: FontWeight.bold,
                    color: greenPastel,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 40),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Icon(Icons.favorite, size: 60, color: Colors.white),
                  SizedBox(width: 30),
                  Expanded(
                    child: Text(
                      'Detectamos ritmos cardiacos anormales mediante sensores del smartwatch que llevas puesto. Si algo no va bien, ¡nos activamos!',
                      style: TextStyle(fontSize: 32, color: Colors.white70),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 40),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Icon(Icons.timer, size: 60, color: Colors.white),
                  SizedBox(width: 30),
                  Expanded(
                    child: Text(
                      'Tienes 5 segundos para cancelar la alerta en caso de que no sea una emergencia real. Esto evita falsos positivos.',
                      style: TextStyle(fontSize: 32, color: Colors.white70),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 40),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Icon(Icons.location_on, size: 60, color: Colors.white),
                  SizedBox(width: 30),
                  Expanded(
                    child: Text(
                      'Si no se cancela, se envía automáticamente tu ubicación a los contactos de emergencia que hayas configurado.',
                      style: TextStyle(fontSize: 32, color: Colors.white70),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 40),
              Center(
                child: Text(
                  '¡Con AlertMe nunca estarás solo!',
                  style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.w500,
                    color: greenPastel,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}