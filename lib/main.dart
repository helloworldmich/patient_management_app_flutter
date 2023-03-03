import 'package:flutter/material.dart';
// import 'package:flutter_navigation/flutter_navigation.dart';
import './add_patient_screen.dart';
import './add_record_screen.dart';
import './login_screen.dart';
import './patients_in_critical_screen.dart';
import './patient_list_screen.dart'; 
import './view_patient_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const LoginScreen(),
        // '/home': (context) => const HomePage(),
        '/addPatient': (context) => const AddPatient(),
        '/addRecord':(context)=>const AddRecord(),
        '/viewPatients': (context) => const ViewPatients(),
        '/viewPatientRecord': (context) => const ViewPatientRecord(),
        '/criticalPatients': (context) => const CriticalPatients(),
      },
    );
  }
}
