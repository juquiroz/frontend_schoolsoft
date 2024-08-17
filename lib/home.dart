import 'package:flutter/material.dart';
import 'menu_sidebar.dart';
import 'content_widget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String _selectedOption = 'Welcome'; // Opción por defecto

  void _onOptionSelected(String option) {
    setState(() {
      _selectedOption = option;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBar en la parte superior
      body: Row(
        children: [
          MenuSidebar(onOptionSelected: _onOptionSelected), // Menú lateral fijo
          // AppBar en la parte superior
          AppBar(
            title: Text('Mi App'),
            backgroundColor: Colors.blue,
          ),
          Expanded(
            child:
                ContentWidget(content: _selectedOption), // Contenido dinámico
          ),
        ],
      ),
    );
  }
}
