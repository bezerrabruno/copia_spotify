import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ArtistPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: CustomScrollView(slivers: [
        SliverAppBar(
          centerTitle: true,
          title: Text('"Artista"'),
          actions: [
            Center(
              child: GestureDetector(
                onTap: () => true,
                child: SizedBox(
                  height: 3.h,
                  width: 12.5.w,
                  child: Container(
                    child: Center(
                      child: Text('Seguir'),
                    ),
                    decoration: BoxDecoration(color: Colors.white24),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () => true,
              child: Icon(
                Icons.more_vert,
                size: 30,
              ),
            ),
          ],
          pinned: true,
          toolbarHeight: 10.h,
          expandedHeight: 45.h,
          backgroundColor: Colors.black,
          flexibleSpace: FlexibleSpaceBar(
            background: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('images/musica.jpg'),
                          fit: BoxFit.cover)),
                ),
                Container(
                  color: Colors.black54,
                ),
                SizedBox(
                  width: double.maxFinite,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 100,
                      ),
                      Text(
                        '"Artista"',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 40.sp,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        '5.391.646 OUVINTES MENSAIS',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 10.sp,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        SliverList(
          delegate: SliverChildListDelegate(
            [
              ElevatedButton(onPressed: () => true, child: Text('Aro')),
              Container(
                margin: const EdgeInsets.all(12),
                height: 6.5.h,
                width: double.maxFinite,
                color: Colors.orange,
              ),
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.only(top: 16, bottom: 6),
                  child: Text(
                    'Popular',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 12, left: 12, right: 12),
                height: 6.5.h,
                width: double.maxFinite,
                color: Colors.orange,
              ),
              Container(
                margin: EdgeInsets.only(top: 12, left: 12, right: 12),
                height: 6.5.h,
                width: double.maxFinite,
                color: Colors.amber,
              ),
              Container(
                margin: EdgeInsets.only(top: 12, left: 12, right: 12),
                height: 6.5.h,
                width: double.maxFinite,
                color: Colors.green,
              ),
              Container(
                margin: EdgeInsets.only(top: 12, left: 12, right: 12),
                height: 6.5.h,
                width: double.maxFinite,
                color: Colors.grey,
              ),
              Container(
                margin: EdgeInsets.only(top: 12, left: 12, right: 12),
                height: 6.5.h,
                width: double.maxFinite,
                color: Colors.purpleAccent,
              ),
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.only(top: 16, bottom: 6),
                  child: Text(
                    'Lançamentos populares',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 12, left: 12, right: 12),
                height: 10.h,
                width: double.maxFinite,
                color: Colors.orange,
              ),
              Container(
                margin: EdgeInsets.only(top: 12, left: 12, right: 12),
                height: 10.h,
                width: double.maxFinite,
                color: Colors.amber,
              ),
              Container(
                margin: EdgeInsets.only(top: 12, left: 12, right: 12),
                height: 10.h,
                width: double.maxFinite,
                color: Colors.green,
              ),
              Container(
                margin: EdgeInsets.only(top: 12, left: 12, right: 12),
                height: 10.h,
                width: double.maxFinite,
                color: Colors.grey,
              ),
              Container(
                margin: EdgeInsets.only(top: 12, left: 12, right: 12),
                height: 10.h,
                width: double.maxFinite,
                color: Colors.purpleAccent,
              ),
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.only(top: 36),
                  child: Text(
                    'Sobre',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Container(
                  margin: EdgeInsets.only(top: 12),
                  height: 40.h,
                  width: double.maxFinite,
                  color: Colors.blueAccent,
                ),
              ),
            ],
          ),
        )
      ]),
    );
  }
}
