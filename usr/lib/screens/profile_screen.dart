import 'package:flutter/material.dart';
import 'package:couldai_user_app/data/mock_data.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('username_official'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.menu),
          ),
        ],
      ),
      body: DefaultTabController(
        length: 2,
        child: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Avatar and Stats Row
                      Row(
                        children: [
                          const CircleAvatar(
                            radius: 40,
                            backgroundImage: NetworkImage('https://i.pravatar.cc/150?img=12'),
                          ),
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                _buildStatColumn('Posts', '54'),
                                _buildStatColumn('Followers', '8.2k'),
                                _buildStatColumn('Following', '150'),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 12),
                      // Bio
                      const Text(
                        'John Doe',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      const Text(
                        'Digital Creator\nTravel | Photography | Lifestyle\n📍 New York, USA',
                      ),
                      const SizedBox(height: 16),
                      // Edit Profile Button
                      SizedBox(
                        width: double.infinity,
                        child: OutlinedButton(
                          onPressed: () {},
                          style: OutlinedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            side: BorderSide(color: Colors.grey.shade300),
                          ),
                          child: const Text(
                            'Edit Profile',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SliverPersistentHeader(
                delegate: _SliverAppBarDelegate(
                  const TabBar(
                    indicatorColor: Colors.black,
                    labelColor: Colors.black,
                    unselectedLabelColor: Colors.grey,
                    tabs: [
                      Tab(icon: Icon(Icons.grid_on)),
                      Tab(icon: Icon(Icons.person_pin_outlined)),
                    ],
                  ),
                ),
                pinned: true,
              ),
            ];
          },
          body: TabBarView(
            children: [
              // Grid View Tab
              GridView.builder(
                padding: EdgeInsets.zero,
                itemCount: 20,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 2,
                  mainAxisSpacing: 2,
                ),
                itemBuilder: (context, index) {
                  return Image.network(
                    'https://picsum.photos/id/${index + 10}/200/200',
                    fit: BoxFit.cover,
                  );
                },
              ),
              // Tagged View Tab (Placeholder)
              const Center(child: Text('Photos of you')),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildStatColumn(String label, String count) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          count,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          label,
          style: const TextStyle(
            fontSize: 14,
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  _SliverAppBarDelegate(this._tabBar);

  final TabBar _tabBar;

  @override
  double get minExtent => _tabBar.preferredSize.height;
  @override
  double get maxExtent => _tabBar.preferredSize.height;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      color: Colors.white,
      child: _tabBar,
    );
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return false;
  }
}
