import 'package:flutter/material.dart';
import 'button.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        title: "Birthday List",
        home: Scaffold(
          body: MyScaffold(
            title: Padding(
                padding: EdgeInsets.fromLTRB(0, 100, 0, 50),
                child: Text(
                  "BD LIST",
                  style: TextStyle(
                      fontSize: 50,
                      color: Colors.white,
                      decorationThickness: 0,
                      fontFamily: "san-serif",
                      fontWeight: FontWeight.w900),
                )),
          ),
        ));
  }
}

class MyScaffold extends StatelessWidget {
  final Widget title;
  const MyScaffold({required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
            Color.fromARGB(255, 255, 22, 218),
            Color.fromARGB(255, 44, 100, 198)
          ])),
      child: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          title,
          const MyFormContainer(),
          MyButton(
              name: const Text(
            "Don't have an account?",
            style: TextStyle(color: Colors.white),
          ))
        ],
      )),
    );
  }
}

class MyFormContainer extends StatelessWidget {
  const MyFormContainer({super.key});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
        child: Column(children: [
      Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Container(
              width: 400,
              child: const TextField(
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(5),
                    filled: true,
                    fillColor: Color.fromARGB(255, 255, 255, 255),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    hintText: "Username"),
              ))),
      Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Container(
            width: 400,
            child: const TextField(
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(5),
                  filled: true,
                  fillColor: Color.fromARGB(255, 255, 255, 255),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  hintText: "Password"),
              obscureText: true,
            ),
          )),
      const MyLogin(),
      MyButton(
          name: const Text(
        "Forgot Password?",
        style: TextStyle(color: Colors.white),
      ))
    ]));
  }
}
