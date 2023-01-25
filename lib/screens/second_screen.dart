import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/sayac_provider.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Consumer<SayacProvider>(
            builder: (context, value, child) => Column(
              children: [
                Text(
                  value.sayi.toString(),
                  style: const TextStyle(fontSize: 25, color: Colors.indigo),
                ),
                Text("AYNI ŞEKİLDE : ${value.sayi}")
              ],
            ),
          ),
          const SizedBox(height: 50),
          IconButton(
            onPressed: () =>
                Provider.of<SayacProvider>(context, listen: false).sayiArttir(),
            icon: const Icon(Icons.plus_one),
            color: Colors.green,
          )
        ],
      )),
    );
  }
}
