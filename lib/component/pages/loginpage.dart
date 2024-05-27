import 'package:flutter/material.dart';
import 'signuppage.dart';
import 'homepage.dart';
import 'forgotpassword.dart';
import 'adminpage.dart';

class LoginRegisterScreen extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login', style: TextStyle(color: Color.fromARGB(218, 255, 255, 255))),
        backgroundColor: const Color(0xFF4A1C6F),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          color: Color(0xFF4A1C6F),
        ),
        child: LayoutBuilder(
          builder: (context, constraints) {
            return Center(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Spacer(flex: 1), // Add space before the content
                    Image.asset(
                      'assets/image/Login.png',
                      height: constraints.maxHeight * 0.2, // 20% of screen height
                    ),
                    const SizedBox(height: 30),
                    const Text(
                      'Sign In',
                      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 20),
                    TextField(
                      controller: emailController,
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        labelText: 'Email',
                        hintText: 'Enter your email',
                        prefixIcon: Icon(Icons.email, color: Colors.white.withOpacity(0.4)),
                        hintStyle: TextStyle(color: Colors.white.withOpacity(0.4)),
                        labelStyle: const TextStyle(color: Colors.white60, fontWeight: FontWeight.w700),
                        border: const OutlineInputBorder(),
                        fillColor: const Color(0x406F1EAB).withOpacity(0.4),
                        filled: true,
                      ),
                    ),
                    const SizedBox(height: 20),
                    TextField(
                      controller: passwordController,
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        labelText: 'Password',
                        hintText: 'Enter your password',
                        prefixIcon: Icon(Icons.lock, color: Colors.white.withOpacity(0.4)),
                        hintStyle: TextStyle(color: Colors.white.withOpacity(0.4)),
                        labelStyle: const TextStyle(color: Colors.white60, fontWeight: FontWeight.w700),
                        border: const OutlineInputBorder(),
                        fillColor: const Color(0x406F1EAB).withOpacity(0.4),
                        filled: true,
                      ),
                      obscureText: true,
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => ForgotPasswordPage()));
                        },
                        child: const Text(
                          'Forgot Password?',
                          style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    const SizedBox(height: 30),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          String email = emailController.text;
                          if (email == 'admin@gmail.com') {
                            Navigator.of(context).push(
                              MaterialPageRoute(builder: (context) => AdminPage()),
                            );
                          } else if (email == 'user@gmail.com') {
                            Navigator.of(context).push(
                              MaterialPageRoute(builder: (context) => Homepage()),
                            );
                          } else {
                            // Handle invalid email case
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text('Invalid email. Please try again.')),
                            );
                          }
                        },
                        child: const Text(
                          'Sign In',
                          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16.0),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      'Or',
                      style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 10),
                    SizedBox(
                      width: double.infinity,
                      child: OutlinedButton.icon(
                        onPressed: () {
                          // Implement sign in with Google functionality here
                        },
                        icon: Image.asset('assets/image/google.png', height: 24), // Update this to your Google icon path
                        label: const Text('Sign in with Google', style: TextStyle(color: Colors.white)),
                        style: OutlinedButton.styleFrom(
                          side: BorderSide(color: Colors.white),
                          backgroundColor: const Color.fromARGB(0, 255, 255, 255),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => SignUpScreen()));
                      },
                      child: const Text(
                        "Don't have an account? Sign Up",
                        style: TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                          decoration: TextDecoration.underline,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Spacer(flex: 1), // Add space after the content
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
