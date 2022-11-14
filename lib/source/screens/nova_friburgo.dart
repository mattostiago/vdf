import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class NovaFriburgo extends StatefulWidget {
  const NovaFriburgo({super.key});

  @override
  State<NovaFriburgo> createState() => _NovaFriburgoState();
}

class _NovaFriburgoState extends State<NovaFriburgo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        body: Column(
          children: [
            Stack(
              children: [
                Hero(
                  tag: 'assets/pousada/cidade.jpg',
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.4,
                    width: MediaQuery.of(context).size.width,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(30),
                          bottomRight: Radius.circular(30)),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black26,
                            offset: Offset(0.0, 2.0),
                            blurRadius: 6)
                      ],
                    ),
                    child: const ClipRRect(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(30),
                          bottomRight: Radius.circular(30)),
                      child: Image(
                        image: AssetImage("assets/pousada/por-do-sol-2.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: Icon(Icons.arrow_back_ios_new))
              ],
            )
          ],
        ));
  }
}
