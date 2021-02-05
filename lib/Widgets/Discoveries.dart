import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:ngothotest/Widgets/DiscoverCard.dart';

class DiscoveryHolders extends StatefulWidget {
  DiscoveryHolders({Key key}) : super(key: key);

  @override
  _DiscoveryHoldersState createState() => _DiscoveryHoldersState();
}

class _DiscoveryHoldersState extends State<DiscoveryHolders> {
  int any({int index}) {
    var rn = new Random();
    return 1 + rn.nextInt(4 - 1);
  }

  createTiles() {
    for (int b = 0; b < 20; b++) {
      setState(() {
        discoverTiles.add(StaggeredTile.count(any().isEven ? 2: any().isOdd ? 1:1, any().isEven ? 2: any().isOdd ? 2:1));
      });
    }
  }

  List<StaggeredTile> discoverTiles = [];
  List<DiscoverCard> cards = [];

  @override
  void initState() {
    super.initState();
    createTiles();
    setState(() {
      cards = [
        DiscoverCard(
          image:
              'https://images.unsplash.com/photo-1579591919791-0e3737ae3808?ixid=MXwxMjA3fDB8MHxzZWFyY2h8Nnx8YmVhdXR5JTIwZ2lybHxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
        ),
        DiscoverCard(
          image:
              'https://images.unsplash.com/photo-1573589234748-2c505a042784?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTh8fGJlYXV0eSUyMGdpcmx8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
        ),
        DiscoverCard(
          image:
              'https://images.unsplash.com/photo-1572119643074-9945e78575c3?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MjB8fGJlYXV0eSUyMGdpcmx8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
        ),
        DiscoverCard(
          image:
              'https://images.unsplash.com/photo-1574981370294-edbbf06bb159?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MjR8fGJlYXV0eSUyMGdpcmx8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
        ),
        DiscoverCard(
          image:
              'https://images.unsplash.com/photo-1573457152228-212eff52a134?ixid=MXwxMjA3fDB8MHxzZWFyY2h8Mjd8fGJlYXV0eSUyMGdpcmx8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
        ),
        DiscoverCard(
          image:
              'https://images.unsplash.com/photo-1609837548825-68f332958242?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MzB8fGJlYXV0eSUyMGdpcmx8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
        ),
        DiscoverCard(
          image:
              'https://images.unsplash.com/photo-1612219710087-07c9ee91954a?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MzJ8fGJlYXV0eSUyMGdpcmx8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
        ),
        DiscoverCard(
          image:
              'https://images.unsplash.com/photo-1610023050964-dead08b285a2?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NDJ8fGJlYXV0eSUyMGdpcmx8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
        ),
        DiscoverCard(
          image:
              'https://images.unsplash.com/photo-1573289084788-b3b4155ca92c?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NDd8fGJlYXV0eSUyMGdpcmx8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
        ),
        DiscoverCard(
          image:
              'https://images.unsplash.com/photo-1611199340099-91a595a86812?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NDl8fGJlYXV0eSUyMGdpcmx8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
        ),
        DiscoverCard(
          image:
              'https://images.unsplash.com/photo-1572257375368-f73ee7fb30d8?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NTN8fGJlYXV0eSUyMGdpcmx8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
        ),
        DiscoverCard(
          image:
              'https://images.unsplash.com/photo-1440589473619-3cde28941638?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NTZ8fGJlYXV0eSUyMGdpcmx8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
        ),
        DiscoverCard(
          image:
              'https://images.unsplash.com/photo-1470101691117-2571c356a668?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NjF8fGJlYXV0eSUyMGdpcmx8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
        ),
        DiscoverCard(
          image:
              'https://images.unsplash.com/photo-1610878715177-b778c0e7c17d?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NjB8fGJlYXV0eSUyMGdpcmx8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
        ),
        DiscoverCard(
          image:
              'https://images.unsplash.com/photo-1507019403270-cca502add9f8?ixid=MXwxMjA3fDB8MHxzZWFyY2h8Njh8fGJlYXV0eSUyMGdpcmx8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
        ),
        DiscoverCard(
          image:
              'https://images.unsplash.com/photo-1505944270255-72b8c68c6a70?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NzB8fGJlYXV0eSUyMGdpcmx8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
        ),
        DiscoverCard(
          image:
              'https://images.unsplash.com/photo-1460904577954-8fadb262612c?ixid=MXwxMjA3fDB8MHxzZWFyY2h8Nzl8fGJlYXV0eSUyMGdpcmx8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
        ),
        DiscoverCard(
          image:
              'https://images.unsplash.com/photo-1500522144261-ea64433bbe27?ixid=MXwxMjA3fDB8MHxzZWFyY2h8ODB8fGJlYXV0eSUyMGdpcmx8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
        ),
        DiscoverCard(
          image:
              'https://images.unsplash.com/photo-1556228721-7712964416e1?ixid=MXwxMjA3fDB8MHxzZWFyY2h8ODh8fGJlYXV0eSUyMGdpcmx8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
        ),
        DiscoverCard(
          image:
              'https://images.unsplash.com/photo-1499651681375-8afc5a4db253?ixid=MXwxMjA3fDB8MHxzZWFyY2h8OTR8fGJlYXV0eSUyMGdpcmx8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
        ),
      ];

      cards.shuffle();
    });
  }

  @override
  Widget build(BuildContext context) {
    return StaggeredGridView.count(
      crossAxisCount: 4,
      staggeredTiles: discoverTiles,
      children: cards,
      mainAxisSpacing: 4.0,
      crossAxisSpacing: 4.0,
    );
  }
}
