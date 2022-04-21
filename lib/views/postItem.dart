import 'package:flutter/material.dart';

import '../models/post.dart';
import 'detail_page.dart';

class PostListItem extends StatelessWidget {
  const PostListItem({Key? key, required this.post}) : super(key: key);

  final Post post;

  @override
  Widget build(BuildContext context) {
    //final textTheme = Theme.of(context).textTheme;
    return Material(
        child: InkWell(
            onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => DetailPage(
                            post: post,
                          )),
                ),
            child: Card(
              child: Column(children: [
                //Image.network('https://i.ytimg.com/vi/AAjw3sjUv0I/maxresdefault.jpg'),
                Image.asset(
                  'assets/image.jpeg',
                  fit: BoxFit.contain,
                ),
                //Text(post.id.toString()),
                Text(
                  post.name,
                  style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                ),
                Text(
                  post.model,
                  style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                ),
                Text(
                  post.age.toString(),
                  style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                ),
              ]),
            )));
  }
}
