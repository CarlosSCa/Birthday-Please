import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final Widget name;
  MyButton({required this.name});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
        width: 400, child: TextButton(onPressed: () {}, child: name));
  }
}

class MyLogin extends StatelessWidget {
  const MyLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      child: OutlinedButton(
        style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0))),
          backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
        ),
        onPressed: () {},
        child: const Text(
          "Login",
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
