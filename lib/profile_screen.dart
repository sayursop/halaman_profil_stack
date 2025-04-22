import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 40),

              // Username dan icon
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    '@alberts_',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Icon(Icons.keyboard_arrow_down, color: Colors.white),
                ],
              ),
              const SizedBox(height: 20),

              // Foto profil dengan badge
              SizedBox(height: 20),
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('images/foto_Profil.jpg'),
                backgroundColor: Colors.grey,
              ),

              // Username lagi
              const Text(
                '@albertusradya',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
              const SizedBox(height: 20),

              // Statistik
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  StatItem(count: '250', label: 'Following'),
                  StatItem(count: '10.5k', label: 'Followers'),
                  StatItem(count: '400k', label: 'Likes'),
                ],
              ),
              const SizedBox(height: 20),

              // Tombol
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ActionButton(text: 'Edit profile'),
                  SizedBox(width: 10),
                  ActionButton(text: 'Share profile'),
                  SizedBox(width: 10),
                  CircleAvatar(
                    radius: 18,
                    backgroundColor: Colors.grey,
                    child: Icon(Icons.bookmark_border, color: Colors.white),
                  ),
                ],
              ),
              const SizedBox(height: 10),

              // Add bio
              TextButton(
                onPressed: () {},
                child: const Text(
                  '230103086 - TI 23A3',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              const SizedBox(height: 20),

              // Tab bar
              const TabBar(
                indicatorColor: Colors.white,
                tabs: [
                  Tab(icon: Icon(Icons.grid_on)),
                  Tab(icon: Icon(Icons.lock_outline)),
                  Tab(icon: Icon(Icons.favorite_border)),
                ],
              ),
              SizedBox(
                height: 400,
                child: TabBarView(
                  children: [
                    PostGridView(),
                    Center(
                      child: Text(
                        'Private Posts',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    Center(
                      child: Text(
                        'Liked Posts',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Komponen statistik
class StatItem extends StatelessWidget {
  final String count;
  final String label;

  const StatItem({required this.count, required this.label, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          count,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 5),
        Text(
          label,
          style: const TextStyle(color: Colors.grey),
        ),
      ],
    );
  }
}

// Komponen tombol
class ActionButton extends StatelessWidget {
  final String text;

  const ActionButton({required this.text, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140,
      height: 35,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Center(
        child: Text(
          text,
          style: const TextStyle(color: Colors.white, fontSize: 14),
        ),
      ),
    );
  }
}

// Komponen Grid Posting
class PostGridView extends StatelessWidget {
  const PostGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 9,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 2,
        mainAxisSpacing: 2,
      ),
      itemBuilder: (context, index) {
        final images = [
          'images/foto 1.jpg',
          'images/foto 2.jpg',
          'images/foto 3.jpg',
          'images/foto 4.jpg',
          'images/foto 5.jpg',
          'images/foto 6.jpg',
          'images/foto 7.jpg',
          'images/foto 8.jpg',
          'images/foto 9.jpg',
        ];
        return Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(images[index]),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(8),
            color: Colors.grey[800],
          ),
        );
      },
    );
  }
}
