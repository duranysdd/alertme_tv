import 'package:alertme_tv/infopage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const AlertMeApp());
}

class AlertMeApp extends StatelessWidget {
  const AlertMeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AlertMe',
      debugShowCheckedModeBanner: false,
      home: const WelcomePage(),
    );
  }
}

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 51, 105, 60), 
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 100),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.notification_important,
                size: 150,
                color: Color.fromARGB(255, 82, 255, 120),
              ),
              const SizedBox(height: 40),

              const Text(
                '¡Bienvenido a AlertMe!',
                style: TextStyle(
                  fontSize: 64,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),

              const Text(
                'Tu seguridad es nuestra prioridad.\nMonitorea alertas en tiempo real.',
                style: TextStyle(
                  fontSize: 32,
                  color: Colors.white70,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 60),

              ElevatedButton(
                onPressed: () {
                Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const InfoPage()),
            );
      },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 60, vertical: 20),
                  backgroundColor: const Color.fromARGB(255, 131, 253, 94),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                ),
                child: const Text(
                  'Comenzar',
                  style: TextStyle(fontSize: 28),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
