import 'dart:async';
import 'dart:convert';
import 'package:bloc/bloc.dart';
import 'package:carwow/models/post.dart';
import 'package:equatable/equatable.dart';
import 'package:http/http.dart' as http;

part 'post_event.dart';
part 'post_state.dart';

class PostBloc extends Bloc<PostEvent, PostState> {
  PostBloc({required this.httpClient}) : super(const PostState()) {
    on<PostFetched>(
      _onPostFetched,
      // transformer: throttleDroppable(throttleDuration),
    );
  }

  final http.Client httpClient;

  Future<void> _onPostFetched(
    PostFetched event,
    Emitter<PostState> emit,
  ) async {
    try {
      if (state.status == PostStatus.initial) {
        final posts = await _fetchPosts();
        return emit(state.copyWith(
          status: PostStatus.success,
          posts: posts,
        ));
      }
      final posts = await _fetchPosts();

      emit(state.copyWith(
        status: PostStatus.success,
        posts: List.of(state.posts)..addAll(posts),
      ));
    } catch (_) {
      emit(state.copyWith(status: PostStatus.failure));
    }
  }

  Future<List<Post>> _fetchPosts() async {
    final response = await httpClient.get(Uri.parse(
        'https://f72166fb-3057-43d7-afe3-869663f9df8f.mock.pstmn.io/vehicle/list'));

    final body = json.decode(response.body);
    //print(body);
    final postList = body['vehicleList'] as List;
   
    print(postList);
    return postList.map((dynamic json) {
      return Post(
        id: json['id'] as int,
        name: json['name'] as String,
        model: json['model'] as String,
        age: json['age'] as int,
      );
    }).toList();
  }
}
