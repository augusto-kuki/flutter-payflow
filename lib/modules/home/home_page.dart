import 'package:flutter/material.dart';
import 'package:payflow/models/user_model.dart';
import 'package:payflow/shared/auth/auth_controller.dart';
import 'package:payflow/shared/themes/app_texts_styles.dart';

class HomePage extends StatefulWidget {
  final UserModel user;
  const HomePage({Key? key, required this.user}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
        appBar: AppBar(title: const Text("Home Page")),
        body: SizedBox(
            width: size.width,
            height: 500,
            child: Stack(children: [
              Text("Usuario logado: ${widget.user.name}",
                  style: TextStyles.buttonHeading),
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    image: DecorationImage(
                        image: NetworkImage(widget.user.photoURL!))),
              )
            ])));
  }
}
