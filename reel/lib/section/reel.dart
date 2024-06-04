import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Reel extends StatefulWidget {
  final title;
  final defaultprice;
  final discountprice;
  final image;
  final pointcash;
  final cash;
  final bool isIphone;
  const Reel(
      {Key? key,
      required this.title,
      required this.defaultprice,
      required this.discountprice,
      required this.image,
      required this.pointcash,
      required this.cash,
      required this.isIphone})
      : super(key: key);

  @override
  State<Reel> createState() => _ReelState();
}

class _ReelState extends State<Reel> {
  String? currentImage;
  bool _isTapped = false;

  @override
  void initState() {
    super.initState();
    currentImage = widget.image;
  }

  void changeImage(String newImage) {
    setState(() {
      currentImage = newImage;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xffFDFDFD),
            Color(0xfffdfdfd), // Replace with the first color of the gradient
            Color(0xffE4E4E4), // Replace with the second color of the gradient
          ],
        ),
      ),
      
      child: Stack(
        children: <Widget>[
          Container(
            child: Column(
              children: [
                SizedBox(height: 44),
                Center(
                  child: Text('${widget.title}',
                      style: TextStyle(
                          color: Color(0xff010101),
                          fontSize: 32,
                          fontWeight: FontWeight.w500)),
                ),
                SizedBox(height: 14),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Spacer(),
                    Image.asset('lib/assets/point.png',
                        width: 31.6, height: 31.6),
                    SizedBox(width: 10),
                    Column(
                      children: [
                        Text('${widget.defaultprice}',
                            style: TextStyle(
                                color: Color(0xff3B3A3C),
                                fontSize: 23.71,
                                fontWeight: FontWeight.w300)),
                        Text('${widget.discountprice}',
                            style: TextStyle(
                                color: Color(0xffDB2323),
                                fontSize: 18.44,
                                decoration: TextDecoration.lineThrough)),
                      ],
                    ),
                    Spacer(),
                    Container(
                      height: 61, // Specify the height of the container
                      child: VerticalDivider(
                        color: Color(0xffB2B2B2),
                        thickness: 1,
                        width: 1,
                      ),
                    ),
                    Spacer(),
                    Image.asset('lib/assets/point.png',
                        width: 31.6, height: 31.6),
                    SizedBox(width: 10),
                    Column(
                      children: [
                        Text('${widget.pointcash}',
                            style: TextStyle(
                                color: Color(0xff3B3A3C),
                                fontSize: 23.71,
                                fontWeight: FontWeight.w300)),
                        Text('+ ${widget.cash}',
                            style: TextStyle(
                                color: Color(0xff0064FF),
                                fontSize: 18.44,
                                )),
                      ],
                    ),
                    Spacer(),
                  ],
                ),
                SizedBox(height: 16),
                Image.asset('$currentImage', height: 286),
                // SizedBox(height: 10),
                if( widget.isIphone == true)
                Container(
                  height: 84,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    padding: EdgeInsets.symmetric(horizontal: 24),
                    children: <Widget>[
                      GestureDetector(
                        onTap: () => changeImage('lib/assets/c1.png'),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Color(0xffF6F5F8),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          height: 84,
                          width: 84,
                          child: Image.asset('lib/assets/c1.png'),
                        ),
                      ),
                      SizedBox(width: 24),
                      GestureDetector(
                        onTap: () => changeImage('lib/assets/c2.png'),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Color(0xffF6F5F8),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          height: 84,
                          width: 84,
                          child: Image.asset('lib/assets/c2.png'),
                        ),
                      ),
                      SizedBox(width: 24),
                      GestureDetector(
                        onTap: () => changeImage('lib/assets/c3.png'),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Color(0xffF6F5F8),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          height: 84,
                          width: 84,
                          child: Image.asset('lib/assets/c3.png'),
                        ),
                      ),
                      SizedBox(width: 24),
                      GestureDetector(
                        onTap: () => changeImage('lib/assets/c4.png'),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Color(0xffF6F5F8),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          height: 84,
                          width: 84,
                          child: Image.asset('lib/assets/c4.png'),
                        ),
                      ),
                      SizedBox(width: 24),
                    ],
                  ),
                ),
                
              ],
            ),
          ),
          if (_isTapped)
        Positioned.fill(
          child: Container(
            color: Colors.black.withOpacity(0.5),
          ),
        ),
          Positioned(
                  bottom: 0,
                  right: 24,
                  child: Column(
                    children: [
                      Icon(Icons.favorite_border, color: Color(0xff5F5F67),size: 32,),
                      Text('12.5k', style: TextStyle(color: Color(0xff5F5F67), fontSize: 18)),

                    SizedBox(height: 24),
                    Image.asset('lib/assets/share.png', width: 32, height: 32),
                    Text('12.5k', style: TextStyle(color: Color(0xff5F5F67), fontSize: 18)),

                    SizedBox(height: 24),
                    Icon(Icons.more_horiz, size: 32),
                    SizedBox(height: 24),

                    ],
                  ),
                ),

            Positioned(
              left: 24,
              
              bottom: _isTapped? 120:24,
              child: Container(
                width: 283,
                child:Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                     children: [
                       Image.asset('lib/assets/logo.png', width: 32, height: 32),
                       SizedBox(width:8),
                        Text('อะกิฮาบารา จำกัด', style: TextStyle(color: _isTapped? Colors.white: Color(0xff29282E), fontSize: 18, fontWeight: FontWeight.bold)),
                     ],
                    ),
                    SizedBox(height: 10),
                    Column(
                      children: [
                        Container(
                      width: 283,
                      height: 43,
                      decoration: BoxDecoration(
                        color: Color(0xffFFFFFF),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                      child: Column(
                        children: [
                          Row(
                            
                            children: [
                              Text(
                                'ดูรายระเอียดเพิ่มเติม', 
                                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                              ),
                              Spacer(),
                              Icon(Icons.arrow_forward_ios, size: 16, color: Color(0xff29282E)),
                            ],
                          ),
                          
                          
                        ],
                      ),
                    )
                    ),
                    SizedBox(height: 3),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _isTapped = !_isTapped;
                        });
                      },
                          child:Container(
                              height: 30,  // Specify your desired height
                              child: Text(
                                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 
                                style: TextStyle(fontSize: 12, 
                                color: _isTapped? Colors.white: Color(0xff29282E), ),
                                maxLines: _isTapped? 10:1,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                    ),
                      ],
                    ),
                    
                  ],
                ),
              ),
            ),
        ],
        
      ),
    );
  }
}

