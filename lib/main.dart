import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var myEmail = TextEditingController();
  var myPass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Welcome to TechHub.pk",
              style: TextStyle(
                  fontSize: 25,
                  backgroundColor: Colors.yellow,
                  fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextField(
                controller: myEmail,
                decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(21),
                        borderSide:
                        const BorderSide(color: Colors.purple, width: 2)),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(21),
                        borderSide:
                        const BorderSide(color: Colors.orange, width: 2)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(21),
                        borderSide:
                        const BorderSide(color: Colors.red, width: 2)),
                    disabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.green, width: 3)),
                    hintText: "Enter Your Email Please!",
                    prefixIcon: const Icon(
                      Icons.email,
                      color: Colors.green,
                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextField(
                obscureText: true,
                readOnly: false,
                obscuringCharacter: '*',
                keyboardType: TextInputType.visiblePassword,
                controller: myPass,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(21),
                      borderSide: const BorderSide(color: Colors.yellow)),
                  hintText: "Enter Your Password Please!",
                  prefixIcon: IconButton(
                    icon: const Icon(
                      Icons.remove_red_eye,
                      color: Colors.red,
                    ),
                    onPressed: () {},
                  ),
                ),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  String email = myEmail.text.toString();
                  String pass = myPass.text.toString();
                  print("Email: $email, Password: $pass");
                },
                child: const Text(
                  "LogIn",
                  style: TextStyle(fontSize: 25),
                ))
          ],
        ));
  }
}
