import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:seo_renderer/seo_renderer.dart';

class CafeDaManha extends StatefulWidget {
  const CafeDaManha({super.key});

  @override
  State<CafeDaManha> createState() => _CafeDaManhaState();
}

class _CafeDaManhaState extends State<CafeDaManha> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const TextRenderer(
              style: TextRendererStyle.header1, child: Text("Café da manhã"))),
    );
  }
}
