import 'package:flutter/material.dart';

import '../models/post.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key, required this.post}) : super(key: key);

  final Post post;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Card(
        child: Column(children: [
          Image.network(
              'https://i.ytimg.com/vi/AAjw3sjUv0I/maxresdefault.jpg'),
          //Text(post.id.toString()),
          Text(
            post.name,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
          ),
          Text(
            post.model,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
          ),
          Text(
            post.age.toString(),
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
          ),
        ]),
      ),
    );
  }
}
