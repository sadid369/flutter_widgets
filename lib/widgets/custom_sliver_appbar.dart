import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomSliverAppBar extends StatelessWidget {
  const CustomSliverAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 200.0,
            flexibleSpace: FlexibleSpaceBar(
              title: const Text(
                'SliverAppBar',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  letterSpacing: 1.2,
                ),
              ),
              background: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.network(
                  'https://images.joseartgallery.com/100736/what-kind-of-art-is-popular-right-now.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            floating: false,
            pinned: true,
            snap: false,
            elevation: 10.0,
            backgroundColor: Colors.transparent,
            actions: [
              IconButton(
                icon: const Icon(CupertinoIcons.search),
                onPressed: () {
                  // Search action
                },
              ),
              IconButton(
                icon: const Icon(Icons.more_vert),
                onPressed: () {
                  // More options
                },
              ),
            ],
          ),
          SliverToBoxAdapter(
            child: SizedBox(
                height: 500,
                child: ListView.builder(
                  // physics: const NeverScrollableScrollPhysics(),
                  itemCount: 500,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(
                        'Item $index',
                        style: const TextStyle(color: Colors.white),
                      ),
                    );
                  },
                )),
          ),
        ],
      ),
    );
  }
}
