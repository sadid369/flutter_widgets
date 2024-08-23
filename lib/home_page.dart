import 'package:flutter/material.dart';
import 'package:flutter_widgets/widgets/custom_sliver_appbar.dart';
import 'package:flutter_widgets/widgets/seat_selection_widet.dart';
import 'package:flutter_widgets/widgets/social_reaction_tile_widget.dart';
import 'package:flutter_widgets/widgets/whatsApp_circle_avatar_status.dart';
import 'package:gap/gap.dart';

import 'widgets/grid_view_builder_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    // double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        decoration:
            BoxDecoration(border: Border.all(color: Colors.white, width: 1)),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                OutlinedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const SeatSelectionWidet(),
                      ),
                    );
                  },
                  child: const Text('Seat Selection Widet'),
                ),
                const Gap(20),
                OutlinedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const WhatsAppCircleAvatarStatus(
                          imageUrl:
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSEEZtpNjffKVMqUuYg88JZozBJbEuQa2z0dQ&s',
                          statusColor: Colors.green,
                        ),
                      ),
                    );
                  },
                  child: const Text('WhatsApp CircleAvatar Status'),
                ),
                const Gap(20),
                OutlinedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                          builder: (context) =>
                              const SocialReactionTileWidget()),
                    );
                  },
                  child: const Text('Social Reaction Tile Widget'),
                ),
                const Gap(20),
                OutlinedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                          builder: (context) => const CustomSliverAppBar()),
                    );
                  },
                  child: const Text('Custom Sliver Appbart'),
                ),
                const Gap(20),
                OutlinedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                          builder: (context) => const GridViewBuilderWidget()),
                    );
                  },
                  child: const Text('GridView Builder Widget'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
