import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../user/form.dart';
import '../home/home.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  String? _validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Por favor ingresa un correo electrónico';
    }
    final emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
    if (!emailRegex.hasMatch(value)) {
      return 'Ingresa un correo electrónico válido';
    }
    return null;
  }

  String? _validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Por favor ingresa una contraseña';
    }
    if (value.length < 8 || value.length > 16) {
      return 'La contraseña debe tener entre 8 y 16 caracteres';
    }
    final digitRegex = RegExp(r'\d');
    final lowerRegex = RegExp(r'[a-z]');
    final upperRegex = RegExp(r'[A-Z]');
    final specialCharRegex = RegExp(r'[^A-Za-z0-9]');
    if (!digitRegex.hasMatch(value)) {
      return 'La contraseña debe contener al menos un dígito';
    }
    if (!lowerRegex.hasMatch(value)) {
      return 'La contraseña debe contener al menos una letra minúscula';
    }
    if (!upperRegex.hasMatch(value)) {
      return 'La contraseña debe contener al menos una letra mayúscula';
    }
    if (!specialCharRegex.hasMatch(value)) {
      return 'La contraseña debe contener al menos un carácter especial';
    }
    return null;
  }

  void _submit() {
    if (_formKey.currentState?.validate() ?? false) {
      // Aquí iría la lógica de autenticación
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Inicio de sesión exitoso')),
      );
      // Redirigir a HomeScreen después del login exitoso
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => HomeScreen(
            username: _emailController.text,
            password: _passwordController.text,
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Iniciar Sesión'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [
              const SizedBox(height: 40),
              Image.asset(
                'assets/img/logos/logopa.png',
                height: 120,
              ),
              const SizedBox(height: 40),
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    TextFormField(
                      controller: _emailController,
                      decoration: InputDecoration(
                        labelText: 'Correo electrónico',
                        prefixIcon: const Icon(Icons.email),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      keyboardType: TextInputType.emailAddress,
                      validator: _validateEmail,
                    ),
                    const SizedBox(height: 20),
                    TextFormField(
                      controller: _passwordController,
                      decoration: InputDecoration(
                        labelText: 'Contraseña',
                        prefixIcon: const Icon(Icons.lock),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      obscureText: true,
                      validator: _validatePassword,
                    ),
                    const SizedBox(height: 30),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: _submit,
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(vertical: 16),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        child: const Text(
                          'Ingresar',
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    GestureDetector(
                      onTap: () {
                        // Navegar al formulario de registro real
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const UserFormScreen(),
                          ),
                        );
                      },
                      child: const Text(
                        '¿No tienes cuenta? Regístrate aquí',
                        style: TextStyle(
                          color: Colors.blue,
                          decoration: TextDecoration.underline,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
