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
                //Text(post.id.toString()),
                Text(
                  post.name,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
                Text(
                  post.model,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                ),
                Text(
                  post.age.toString(),
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                ),
              ]),
            )));
  }
}
