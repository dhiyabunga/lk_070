import 'package:flutter/material.dart';
import 'home.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String _username = "";
  String _password = "";
  bool isClicked = false;

  _navigateToHome() async {
    //duration itu untuk waktu ngeload
    await Future.delayed(const Duration(), () {});
    //masuk ke halaman mana
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => HomePage(
                  username: _username,
                )));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 255, 193, 214),
        appBar: AppBar(title: const Text(" Login Page")),
        body: Column(
          children: [
            _usernameField(),
            _passwordField(),
            _loginButton(context),
          ],
        ),
      ),
    );
  }

  Widget _usernameField() {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: TextFormField(
          enabled: true,
          onChanged: (value) {
            _username = value;
          },
          decoration: const InputDecoration(
              hintText: 'Masukkan Username',
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(12)))),
        ),
      ),
    );
  }

  Widget _passwordField() {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: TextFormField(
          enabled: true,
          obscureText: true,
          onChanged: (value) {
            _password = value;
          },
          decoration: InputDecoration(
              suffix: IconButton(
                  onPressed: () {
                    print('mata');
                  },
                  icon: const Icon(Icons.remove_red_eye)),
              hintText: 'Masukkan Password',
              border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(12)))),
        ),
      ),
    );
  }

  Widget _loginButton(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: ElevatedButton(
          style: ButtonStyle(
              backgroundColor: isClicked == true
                  ? WidgetStateProperty.all(
                      const Color.fromARGB(255, 255, 150, 185))
                  : WidgetStateProperty.all(
                      const Color.fromARGB(255, 203, 231, 253))),
          onPressed: () {
            if (_username == "k" && _password == "070") {
              //navigasi ke home
              _navigateToHome();
              ScaffoldMessenger.of(context).showSnackBar(
                //ngasih snackbar atau notif kalo berhasik login
                const SnackBar(
                  content: Text('Login Success'),
                ),
              );
              setState(() {
                isClicked = !isClicked;
              });
            }
          },
          child: const Text('Login')),
    );
  }
}
