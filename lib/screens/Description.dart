import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class Description extends StatelessWidget {
  const Description({Key? key}) : super(key: key);

  // final ScrollController scrollController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SlidingUpPanel(
        maxHeight: MediaQuery.of(context).size.height * 0.6,
        minHeight: 120.0,
        parallaxEnabled: true,
        backdropEnabled: true,
        defaultPanelState: PanelState.OPEN,
        // header: Center(child: Icon(Icons.drag_handle_outlined)),
        panelBuilder: (scrollController) =>
            slidingUpDetail(scrollController, context),
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(18.0), topRight: Radius.circular(18.0)),
        body: Column(
          children: [
            CarouselSlider.builder(
                itemCount: 4,
                itemBuilder:
                    (BuildContext context, int itemIndex, int pageViewIndex) =>
                        new Container(
                          child: Image.asset(
                            'image/gap.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                options: CarouselOptions(
                  height: MediaQuery.of(context).size.height,
                  enlargeCenterPage: false,
                  autoPlay: false,
                  aspectRatio: 28 / 28,
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enableInfiniteScroll: true,
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  viewportFraction: 0.8,
                )),
          ],
        ),
      ),
    );
  }
}

Widget slidingUpDetail(
    ScrollController scrollController, BuildContext context) {
  return ListView(
    shrinkWrap: true,
    padding: EdgeInsets.all(15.0),
    controller: scrollController,
    children: [
      Center(child: Icon(Icons.minimize_outlined)),
      SizedBox(
        height: 5.0,
      ),
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Jol Torongo',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(width: 15.0),
            Row(
              children: [
                Icon(
                  Icons.star,
                  color: Colors.yellow.shade800,
                  size: 20.0,
                ),
                Icon(
                  Icons.star,
                  color: Colors.yellow.shade800,
                  size: 20.0,
                ),
                Icon(Icons.star, color: Colors.yellow.shade800, size: 20.0),
                Icon(Icons.star, color: Colors.yellow.shade800, size: 20.0),
                Icon(Icons.star, color: Colors.yellow.shade800, size: 20.0),
                SizedBox(width: 10.0),
                Text(
                  '5.5',
                  style: TextStyle(fontWeight: FontWeight.w900),
                ),
                SizedBox(width: 5.0),
                Text(
                  '(53k+Review)',
                  style: TextStyle(
                      color: Colors.purple, fontWeight: FontWeight.w800),
                )
              ],
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              'Address',
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(
              'Laboni Beach,Cox"s Baxar',
              style:
                  TextStyle(fontWeight: FontWeight.normal, color: Colors.grey),
            ),
            SizedBox(
              width: 5.0,
            ),
            Text(
              '01769-107011',
              style:
                  TextStyle(fontWeight: FontWeight.normal, color: Colors.grey),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              'Facilities',
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10.0,
            ),
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.purple,
                    border: Border.all(
                      color: Colors.purple,
                      width: 8,
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Icon(
                    Icons.wifi,
                    color: Colors.white,
                    size: 20.0,
                  ),
                ),
                SizedBox(
                  width: 8.0,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.purple,
                    border: Border.all(
                      color: Colors.purple,
                      width: 8,
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Icon(
                    Icons.water,
                    color: Colors.white,
                    size: 20.0,
                  ),
                ),
                SizedBox(
                  width: 8.0,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.purple,
                    border: Border.all(
                      color: Colors.purple,
                      width: 8,
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Icon(
                    Icons.tv,
                    color: Colors.white,
                    size: 20.0,
                  ),
                ),
                SizedBox(
                  width: 8.0,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.purple,
                    border: Border.all(
                      color: Colors.purple,
                      width: 8,
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Icon(
                    Icons.coffee_outlined,
                    color: Colors.white,
                    size: 20.0,
                  ),
                ),
                SizedBox(
                  width: 8.0,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.purple,
                    border: Border.all(
                      color: Colors.purple,
                      width: 8,
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Icon(
                    Icons.water_outlined,
                    color: Colors.white,
                    size: 20.0,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 12.0,
            ),
            Text(
              'Description',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 15.0),
            ),
            SizedBox(
              height: 8.0,
            ),
            Flexible(
              child: Text(
                'Lorem Ipsum dolor sit amet,consectetur adipiscing elite, sed do elusmod tempr incididunt ut labore et',
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 12.0,
                    fontWeight: FontWeight.w300),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text(
                        'Start from',
                        style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                            fontSize: 10.0),
                      ),
                      Text(
                        '45.00',
                        style: TextStyle(
                            color: Colors.purple,
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 180.0,
                    height: 40.0,
                    child: ElevatedButton(
                      onPressed: () {
                        showDialog(
                            context: context,
                            builder: (BuildContext context) =>
                                _buildPopupDialog(context));
                      },
                      child: Text(
                        'Rental Now',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15.0),
                      ),
                      style: ElevatedButton.styleFrom(
                          primary: Colors.black, shape: StadiumBorder()),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      )
    ],
  );
}

Widget _buildPopupDialog(BuildContext context) {
  return new AlertDialog(
    // title: const Text('Total Payment'),
    content:  Container(
      height: 80.0,
      width: 50.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25.0),
      ),
        child: Center(
          child: Expanded(
            child: new Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Total Payment'),
                  SizedBox(height: 10.0,),
                  Text(
                    '55.00',
                    style: TextStyle(
                        color: Colors.purple,
                        fontWeight: FontWeight.bold,
                        fontSize: 25.0),
                  ),
                  
                   Container(
                    
                    child: ElevatedButton(onPressed: (){}, child: Text('Pay',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.black,
                      shape: StadiumBorder()
                    ),),
                  ),
                ],
              ),
          ),
        ),
      ),
    // actions: <Widget>[
    //   Container(
    //               width: MediaQuery.of(context).size.width,
    //               child: ElevatedButton(onPressed: (){}, child: Text('Pay',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
    //               style: ElevatedButton.styleFrom(
    //                 primary: Colors.black,
    //                 shape: StadiumBorder()
    //               ),),
    //             ),
    // ],
  );
}
