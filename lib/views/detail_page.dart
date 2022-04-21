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
        margin: const EdgeInsets.all(20),
        clipBehavior: Clip.antiAlias,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Image.network('https://i.ytimg.com/vi/AAjw3sjUv0I/maxresdefault.jpg'),
          //Text(post.id.toString()),

          Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    post.name,
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  Text(
                    post.model,
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.w400),
                  ),
                  Text(
                    post.age.toString(),
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.w400),
                  ),
                ],
              )),
        ]),
      ),
    );
  }
}
