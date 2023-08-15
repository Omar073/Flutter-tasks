import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // title: 'My App',
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Sign-in screen'),
            centerTitle: true,
            leading: IconButton(
              icon: const Icon(
                Icons.arrow_back,
                color : Colors.black
              ),
                onPressed: (){
                  print('Back button pressed');
              },
            ),
            backgroundColor: Colors.cyan, // Set the background color of the AppBar
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 16.0), // Set the right margin
                child: IconButton(
                  icon: const Icon(
                    Icons.settings,
                    color: Colors.black,
                  ),
                  onPressed: () {
                    print('Settings button pressed');
                  },
                ),
              ),
            ],
          ),
          body:
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Padding(
                  padding: EdgeInsets.only(bottom: 16.0),
                  child: Text(
                    'Enter your email and password',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.cyan,
                    ),
                  ),
                ),
                SizedBox(
                  height: 100,
                  width: 200,
                  child: Image.network("https://cdn.vectorstock.com/i/1000x1000/57/25/sign-in-with-arrow-icon-login-symbol-vector-10825725.webp")
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: TextField(
                        controller: _emailController,
                        style: const TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                        ),
                        obscureText: false, // obscureText is used to hide the text
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30), // Set rounded corner radius
                          ),
                          contentPadding: const EdgeInsets.all(20), // Set padding
                          hintText: "MyEmail@gmail.com",
                          labelText: "Email",
                          prefixIcon: const Icon(Icons.email),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: TextField(
                        controller: _passwordController,
                        style: const TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                        ),
                        obscureText: false, // obscureText is used to hide the text
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30), // Set rounded corner radius
                          ),
                          contentPadding: const EdgeInsets.all(20), // Set padding
                          hintText: "Password",
                          labelText: "Password",
                          prefixIcon: const Icon(Icons.add_box),
                        ),
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        textStyle: const TextStyle(fontSize: 15),
                        shape: const StadiumBorder(),
                        primary: Colors.amber, // background
                        onPrimary: Colors.white, // foreground
                        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                      ),
                      onPressed: () {
                        final email = _emailController.text;
                        final password = _passwordController.text;
                        print('Sign-in button pressed');
                        print('Email: $email');
                        print('Password: $password');
                      },
                      child: const Text('Sign-in'),
                    ),
                  ],
                ),
              ],
            ),
        ),
      ),
    );
  }
}
