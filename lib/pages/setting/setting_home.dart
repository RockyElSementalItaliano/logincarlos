import 'package:flutter/material.dart';

class SettingHome extends StatelessWidget {
  const SettingHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Configuración'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const Text(
            'Cuenta',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          Card(
            color: Colors.grey[200],
            child: ListTile(
              leading: const Icon(Icons.email_outlined),
              title: const Text('Actualizar Correo'),
              subtitle: const Text('Modifica tu dirección de correo electrónico'),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
                // Acción para actualizar correo
              },
            ),
          ),
          Card(
            color: Colors.grey[200],
            child: ListTile(
              leading: const Icon(Icons.lock_outline),
              title: const Text('Cambiar Contraseña'),
              subtitle: const Text('Establece una nueva contraseña segura'),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
                // Acción para cambiar contraseña
              },
            ),
          ),
          const SizedBox(height: 24),
          const Text(
            'Apariencia',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          Card(
            color: Colors.grey[200],
            child: ListTile(
              leading: const Icon(Icons.palette_outlined),
              title: const Text('Tema de la App'),
              subtitle: const Text('Personaliza colores y aspecto'),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
                // Acción para cambiar tema
              },
            ),
          ),
          Card(
            color: Colors.grey[200],
            child: ListTile(
              leading: const Icon(Icons.language_outlined),
              title: const Text('Idioma'),
              subtitle: const Text('Selecciona el idioma de la aplicación'),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
                // Acción para cambiar idioma
              },
            ),
          ),
        ],
      ),
    );
  }
}
