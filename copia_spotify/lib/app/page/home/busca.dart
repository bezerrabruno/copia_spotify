import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: CustomScrollView(
        slivers: [
          SliverList(
            delegate: SliverChildListDelegate([
              SizedBox(
                height: 100,
              ),
            ]),
          ),
          SliverAppBar(
            backgroundColor: Colors.black,
            pinned: true,
            toolbarHeight: 80,
            titleSpacing: 6.0,
            expandedHeight: 90,
            flexibleSpace: FlexibleSpaceBar(
              background: Text(
                'Buscar',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 26,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            title: SizedBox(
              height: 60,
              width: double.infinity,
              child: Card(
                color: Colors.white,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12.0),
                      child: Icon(
                        Icons.search,
                        color: Colors.grey[900],
                        size: 35,
                      ),
                    ),
                    Text(
                      'Artistas,músicas ou podcasts',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: Colors.grey[900]),
                    )
                  ],
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              Container(
                height: 130,
                color: Colors.pink,
              ),
              Container(
                height: 130,
                color: Colors.green,
              ),
              Container(
                height: 130,
                color: Colors.blue,
              ),
              Container(
                height: 130,
                color: Colors.orange,
              ),
              Container(
                height: 130,
                color: Colors.purple,
              ),
              Container(
                height: 130,
                color: Colors.pink,
              ),
              Container(
                height: 130,
                color: Colors.green,
              ),
              Container(
                height: 130,
                color: Colors.blue,
              ),
              Container(
                height: 130,
                color: Colors.orange,
              ),
              Container(
                height: 130,
                color: Colors.purple,
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
