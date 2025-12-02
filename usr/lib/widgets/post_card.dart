import 'package:flutter/material.dart';
import 'package:couldai_user_app/data/mock_data.dart';

class PostCard extends StatelessWidget {
  final Post post;

  const PostCard({super.key, required this.post});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Header
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          child: Row(
            children: [
              CircleAvatar(
                radius: 18,
                backgroundImage: NetworkImage(post.userAvatar),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Text(
                  post.username,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              IconButton(
                icon: const Icon(Icons.more_vert),
                onPressed: () {},
              ),
            ],
          ),
        ),
        // Image
        SizedBox(
          height: 400,
          width: double.infinity,
          child: Image.network(
            post.imageUrl,
            fit: BoxFit.cover,
            loadingBuilder: (context, child, loadingProgress) {
              if (loadingProgress == null) return child;
              return Center(
                child: CircularProgressIndicator(
                  value: loadingProgress.expectedTotalBytes != null
                      ? loadingProgress.cumulativeBytesLoaded /
                          loadingProgress.expectedTotalBytes!
                      : null,
                ),
              );
            },
            errorBuilder: (context, error, stackTrace) => Container(
              color: Colors.grey[200],
              child: const Icon(Icons.error),
            ),
          ),
        ),
        // Actions
        Row(
          children: [
            IconButton(
              icon: const Icon(Icons.favorite_border),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.chat_bubble_outline),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.send),
              onPressed: () {},
            ),
            const Spacer(),
            IconButton(
              icon: const Icon(Icons.bookmark_border),
              onPressed: () {},
            ),
          ],
        ),
        // Likes & Caption
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '${post.likes} likes',
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 4),
              RichText(
                text: TextSpan(
                  style: const TextStyle(color: Colors.black),
                  children: [
                    TextSpan(
                      text: '${post.username} ',
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    TextSpan(text: post.caption),
                  ],
                ),
              ),
              const SizedBox(height: 4),
              Text(
                'View all ${post.commentsCount} comments',
                style: const TextStyle(color: Colors.grey),
              ),
              const SizedBox(height: 4),
              Text(
                post.timeAgo,
                style: const TextStyle(
                  color: Colors.grey,
                  fontSize: 12,
                ),
              ),
              const SizedBox(height: 16),
            ],
          ),
        ),
      ],
    );
  }
}
