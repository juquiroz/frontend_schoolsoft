import 'package:flutter/material.dart';

class MenuSidebar extends StatelessWidget {
  final Function(String) onOptionSelected;

  MenuSidebar({required this.onOptionSelected});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      color: Colors.blueGrey,
      child: ListView(
        children: [
          // Logo en la parte superior
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Icon(Icons.school,
                size: 100,
                color: Colors.white), // Puedes reemplazarlo con una imagen
          ),
          Divider(color: Colors.white),
          // Submenú de Estudiantes
          ExpansionTile(
            leading: Icon(Icons.school, color: Colors.white),
            title: Text('Estudiantes', style: TextStyle(color: Colors.white)),
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: ListTile(
                  leading: Icon(Icons.list, color: Colors.white),
                  title: Text('All Students',
                      style: TextStyle(color: Colors.white)),
                  onTap: () => onOptionSelected('All Students'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: ListTile(
                  leading: Icon(Icons.add, color: Colors.white),
                  title: Text('Add Student',
                      style: TextStyle(color: Colors.white)),
                  onTap: () => onOptionSelected('Add Student'),
                ),
              ),
            ],
          ),
          // Profesores
          ListTile(
            leading: Icon(Icons.person, color: Colors.white),
            title: Text('Profesores', style: TextStyle(color: Colors.white)),
            onTap: () => onOptionSelected('Profesores'),
          ),
          // Materias
          ListTile(
            leading: Icon(Icons.book, color: Colors.white),
            title: Text('Materias', style: TextStyle(color: Colors.white)),
            onTap: () => onOptionSelected('Materias'),
          ),
        ],
      ),
    );
  }
}
