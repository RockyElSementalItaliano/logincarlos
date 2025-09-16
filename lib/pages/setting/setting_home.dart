import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../theme/theme_app.dart';

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
          Text(
            'Cuenta',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Theme.of(context).textTheme.titleLarge?.color,
            ),
          ),
          const SizedBox(height: 8),
          Card(
            color: Theme.of(context).colorScheme.secondary.withOpacity(0.1),
            child: ListTile(
              leading: Icon(Icons.email_outlined, color: Theme.of(context).colorScheme.primary),
              title: Text('Actualizar Correo', style: TextStyle(color: Theme.of(context).textTheme.bodyLarge?.color)),
              subtitle: Text('Modifica tu dirección de correo electrónico', style: TextStyle(color: Theme.of(context).textTheme.bodyLarge?.color)),
              trailing: Icon(Icons.arrow_forward_ios, color: Theme.of(context).colorScheme.primary),
              onTap: () {
                // Acción para actualizar correo
              },
            ),
          ),
          Card(
            color: Theme.of(context).colorScheme.secondary.withOpacity(0.1),
            child: ListTile(
              leading: Icon(Icons.lock_outline, color: Theme.of(context).colorScheme.primary),
              title: Text('Cambiar Contraseña', style: TextStyle(color: Theme.of(context).textTheme.bodyLarge?.color)),
              subtitle: Text('Establece una nueva contraseña segura', style: TextStyle(color: Theme.of(context).textTheme.bodyLarge?.color)),
              trailing: Icon(Icons.arrow_forward_ios, color: Theme.of(context).colorScheme.primary),
              onTap: () {
                // Acción para cambiar contraseña
              },
            ),
          ),
          const SizedBox(height: 24),
          Text(
            'Apariencia',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Theme.of(context).textTheme.titleLarge?.color,
            ),
          ),
          const SizedBox(height: 8),
          Card(
            color: Theme.of(context).colorScheme.secondary.withOpacity(0.1),
            child: ListTile(
              leading: Icon(Icons.palette_outlined, color: Theme.of(context).colorScheme.primary),
              title: Text('Tema de la App', style: TextStyle(color: Theme.of(context).textTheme.bodyLarge?.color)),
              subtitle: Text('Personaliza colores y aspecto', style: TextStyle(color: Theme.of(context).textTheme.bodyLarge?.color)),
              trailing: Icon(Icons.arrow_forward_ios, color: Theme.of(context).colorScheme.primary),
              onTap: () {
                Provider.of<AppTheme>(context, listen: false).toggleTheme();
              },
            ),
          ),
          Card(
            color: Theme.of(context).colorScheme.secondary.withOpacity(0.1),
            child: ListTile(
              leading: Icon(Icons.language_outlined, color: Theme.of(context).colorScheme.primary),
              title: Text('Idioma', style: TextStyle(color: Theme.of(context).textTheme.bodyLarge?.color)),
              subtitle: Text('Selecciona el idioma de la aplicación', style: TextStyle(color: Theme.of(context).textTheme.bodyLarge?.color)),
              trailing: Icon(Icons.arrow_forward_ios, color: Theme.of(context).colorScheme.primary),
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
