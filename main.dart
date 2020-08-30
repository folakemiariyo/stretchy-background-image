import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import './constants.dart';
import './widgets/profile.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: GoogleFonts.ptSansTextTheme(),
      ),
       home: Scaffold(
        backgroundColor: darkGrey,
        body: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers:[
            SliverAppBar(
            backgroundColor: darkOrange,
            expandedHeight: 300,
            stretch: true,
              onStretchTrigger: () {
                print('trigger');
                return;
              },
              stretchTriggerOffset: 200,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                'Black Panther',
                style: GoogleFonts.inconsolata(
                  fontWeight: FontWeight.w600
                ),),
               centerTitle:true,
               stretchModes: const [
                  StretchMode.zoomBackground,
                  StretchMode.fadeTitle,
                  StretchMode.blurBackground,
                ],
              background:
              Stack(
                  fit: StackFit.expand,
                  children: [
               Image.network(
                'https://s-media-cache-ak0.pinimg.com/originals/8a/c9/79/8ac979a84471d6ad7c092176f9d10e20.jpg',
                fit: BoxFit.cover,
              ),
              const DecoratedBox(
                decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment(0.0,0.5),
                  end: Alignment(0.0,0.0),
                  colors: <Color> [
                    Color(0x60000000),
                    Color(0x00000000),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ),
            SliverList(
              delegate: SliverChildListDelegate([
              const Profile(),
            ],),
          )
          ]
        ),
      ),
    );
  }}
         