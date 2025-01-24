import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Wallpaper extends StatefulWidget {
  const Wallpaper({super.key});

  fetchapi() async {
    await http.get(
      Uri.parse('https://api.pexels.com/v1/curated?per_page=80'),
      headers: {
        'Authorization':
            'LC83iXyapona48Reut0uWtL2SzSOom9ZVwYkkXFguRScPndUzHLBXcmQ',
      },
    ).then(
      (value) {
        print(value);
      },
    );
  }

  @override
  State<Wallpaper> createState() => _WallpaperState();
}

class _WallpaperState extends State<Wallpaper> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 3,
                    childAspectRatio: 2 / 3,
                    mainAxisSpacing: 2),
                itemBuilder: (context, index) {
                  return Container(
                    color: Colors.blue,
                  );
                },
              ),
            ),
          ),
          Container(
            height: 20,
            width: double.infinity,
            color: Colors.black,
            child: const Center(
                child: Text(
              'load more',
              style: TextStyle(fontSize: 20, color: Colors.white),
            )),
          )
        ],
      ),
    );
  }
}
