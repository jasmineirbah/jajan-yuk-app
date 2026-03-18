import 'package:flutter/material.dart';
import 'package:jajan_yuk_app/ui/home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // Controller: objek untuk ambil/atur teks di dalam TextField
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  // Fungsi login
  void _login() {
    // Validasi kosong
    if (_usernameController.text.isEmpty || _passwordController.text.isEmpty) {
      _showError("Username dan Password tidak boleh kosong!");
      return;
    }

    // Validasi data
    if (_usernameController.text == "Alfin" &&
        _passwordController.text == "Alfin123") {
      // Snackbar success
      ScaffoldMessenger.of(context).showSnackBar( //ScaffoldMessenger untuk? 
        SnackBar( //Snackbar untuk? 
          content: Text("Login Success"),
          backgroundColor: const Color.fromARGB(255, 30, 149, 26),
          behavior: SnackBarBehavior.floating,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      );
      // Pindah ke home page
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => HomePage(username: _usernameController.text),
        ), // Bawa username dari user
      );
    } else {
      _showError("Login failed! Check your data.");
    }
  }

  // Fungsi error message
  void _showError(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        backgroundColor: Colors.red,
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: const Color(0xFFF2F2F2),
      // SafeArea: Menjaga konten agar tidak tertutup notch atau status bar HP
      body: SafeArea(
        child: Stack(
          //
          children: [
            _buildTopCard(),
            _buildLoginForm(),
          ],
        ),
      ),
    );
  }

  Widget _buildTopCard() {
    return Positioned(
      top: 0,
      left: 0,
      right: 0,
      child: Container(
        padding: const EdgeInsets.only(top: 40, bottom: 20),
        decoration: const BoxDecoration(
          color: Color(0xFFF2F2F2),
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(40),
          ),
        ),
        child: Column(
          children: [
            // logo
            Container(
              padding: const EdgeInsets.all(10),
              decoration: const BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
              child: ClipOval(
                child: Image.asset(
                  'assets/images/logo.png',
                  height: 60,
                  width: 60,
                  fit: BoxFit.cover,
                ),
              ),
            ),

            const SizedBox(height: 20),

            // tulisan login
            const Text(
              "Login",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),

            const SizedBox(height: 8),

            // garis orange
            Container(
              width: 80,
              height: 3,
              decoration: BoxDecoration(
                color: Color(0xFFFF4A3A),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Login Form
  Widget _buildLoginForm() {
    return Positioned(
      top: 250, // posisi dari atas (atur kalau kurang pas)
      left: 0,
      right: 0,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),

            const Text(
              "Username",
              style: TextStyle(color: Colors.grey),
            ),
            const SizedBox(height: 5),

            CustomInputField(
              hint: "Enter Username",
              controller: _usernameController,
            ),

            const SizedBox(height: 25),

            const Text(
              "Password",
              style: TextStyle(color: Colors.grey),
            ),
            const SizedBox(height: 5),

            CustomInputField(
              hint: "Enter Password",
              controller: _passwordController,
              isPassword: true,
            ),

            const SizedBox(height: 50),

            SizedBox(
              width: double.infinity,
              height: 60,
              child: ElevatedButton(
                onPressed: _login,
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFFF4A3A),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(35),
                  ),
                ),
                child: const Text(
                  "Login",
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Input Field
class CustomInputField extends StatefulWidget {
  // Atribut class
  final String hint; //placeholder
  final TextEditingController controller; // biar tahu apa yg diketik user
  final bool isPassword;

  // Constructor
  const CustomInputField({
    super.key,
    required this.hint,
    required this.controller,
    this.isPassword = false,
  });

  @override
  State<CustomInputField> createState() => _CustomInputFieldState();
}

class _CustomInputFieldState extends State<CustomInputField> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      obscureText: widget.isPassword ? _obscureText : false,
      decoration: InputDecoration(
        hintText: widget.hint,
        border: const UnderlineInputBorder(),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.black),
        ),
        suffixIcon: widget.isPassword
            ? IconButton(
                icon: Icon(
                  _obscureText ? Icons.visibility_off : Icons.visibility,
                ),
                onPressed: () => setState(() => _obscureText = !_obscureText),
              )
            : null,
      ),
    );
  }
}
