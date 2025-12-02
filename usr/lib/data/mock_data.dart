class Post {
  final String username;
  final String userAvatar;
  final String imageUrl;
  final String caption;
  final int likes;
  final int commentsCount;
  final String timeAgo;

  Post({
    required this.username,
    required this.userAvatar,
    required this.imageUrl,
    required this.caption,
    required this.likes,
    required this.commentsCount,
    required this.timeAgo,
  });
}

class UserProfile {
  final String name;
  final String username;
  final String avatarUrl;
  final String bio;
  final String birthday;
  final String location;
  final String joinedDate;
  final int postsCount;
  final int friendsCount;

  UserProfile({
    required this.name,
    required this.username,
    required this.avatarUrl,
    required this.bio,
    required this.birthday,
    required this.location,
    required this.joinedDate,
    required this.postsCount,
    required this.friendsCount,
  });
}

final UserProfile currentUser = UserProfile(
  name: 'Alan karayshay',
  username: 'alankarayshay',
  avatarUrl: 'https://i.pravatar.cc/150?img=33', // Placeholder for the couple photo
  bio: 'MORE JSEM CIGAN KUNDO',
  birthday: 'Apr 2, 2006',
  location: 'Hlinsko v Čechách',
  joinedDate: 'Joined Nov 2025',
  postsCount: 4,
  friendsCount: 7,
);

final List<Post> mockPosts = [
  Post(
    username: 'Alan karayshay',
    userAvatar: 'https://i.pravatar.cc/150?img=33',
    imageUrl: 'https://picsum.photos/id/1015/600/600',
    caption: 'Sunset vibes in the mountains! 🏔️✨ #travel #nature',
    likes: 1243,
    commentsCount: 45,
    timeAgo: '2 hours ago',
  ),
  Post(
    username: 'tech_guru',
    userAvatar: 'https://i.pravatar.cc/150?img=11',
    imageUrl: 'https://picsum.photos/id/1/600/600',
    caption: 'Coding setup for the weekend. What are you building? 💻☕',
    likes: 892,
    commentsCount: 120,
    timeAgo: '5 hours ago',
  ),
  Post(
    username: 'foodie_adventures',
    userAvatar: 'https://i.pravatar.cc/150?img=3',
    imageUrl: 'https://picsum.photos/id/225/600/600',
    caption: 'Best tea I have ever had! 🍵',
    likes: 3402,
    commentsCount: 210,
    timeAgo: '1 day ago',
  ),
  Post(
    username: 'urban_style',
    userAvatar: 'https://i.pravatar.cc/150?img=8',
    imageUrl: 'https://picsum.photos/id/64/600/600',
    caption: 'City lights and late nights. 🌃',
    likes: 567,
    commentsCount: 12,
    timeAgo: '2 days ago',
  ),
];
