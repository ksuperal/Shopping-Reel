import 'package:flutter/material.dart';
import 'package:reel/section/reel.dart';

class ReelPage extends StatefulWidget {
  const ReelPage({super.key});

  @override
  State<ReelPage> createState() => _ReelPageState();
}

class _ReelPageState extends State<ReelPage> {
  @override
  Widget build(BuildContext context) {
    PageController _pageController = PageController(initialPage: 0);

    List<Widget> reel = [
      Reel(
        title: 'iPhone 15 128GB',
        defaultprice: '270,000',
        discountprice: '299,000',
        image: 'lib/assets/alliphone.png',
        pointcash: '108,000',
        cash: '18,000 ฿',
      ),
            Reel(
        title: 'iPhone 15 128GB',
        defaultprice: '270,000',
        discountprice: '299,000',
        image: 'lib/assets/alliphone.png',
        pointcash: '108,000',
        cash: '18,000 ฿',
      ),
            Reel(
        title: 'iPhone 15 128GB',
        defaultprice: '270,000',
        discountprice: '299,000',
        image: 'lib/assets/alliphone.png',
        pointcash: '108,000',
        cash: '18,000 ฿',
      ),
      
    ];
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        backgroundColor: Color(0xffFDFDFD),
        title: Padding(
      padding: const EdgeInsets.only(left: 24),
      child: Row(
        children: [
          Text(
            'Reels',
            style: TextStyle(color: Color(0xff949399), fontSize: 24, fontWeight: FontWeight.w500), // Set the color of the text
          ),
          SizedBox(width: 4.0), // Add some space between the icon and the text
          Icon(Icons.expand_more, color: Color(0xff949399)),
         
        ],
      ),
    ),
      ),
      body: Container(
        child: PageView(
          scrollDirection: Axis.vertical,
          controller: _pageController,
          children: reel,
        )
      ),
    );
  }
}
