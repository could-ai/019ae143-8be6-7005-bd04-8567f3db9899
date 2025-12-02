import 'package:flutter/material.dart';
import 'package:couldai_user_app/data/mock_data.dart';
import 'package:couldai_user_app/widgets/post_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'SocialApp',
          style: TextStyle(fontStyle: FontStyle.italic),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.favorite_border),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.send),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: mockPosts.length,
        itemBuilder: (context, index) {
          return PostCard(post: mockPosts[index]);
        },
      ),
    );
  }
}
