import 'package:demoproject/screens/homepage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_range_slider/flutter_range_slider.dart' as frs;
import 'package:sliding_up_panel/sliding_up_panel.dart';

class SearchLocation extends StatelessWidget {
  const SearchLocation({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SlidingUpPanel(
        maxHeight: MediaQuery.of(context).size.height * 0.6,
        minHeight: 120.0,
        parallaxEnabled: true,
        backdropEnabled: true,
        defaultPanelState: PanelState.OPEN,
        // header: Center(child: Icon(Icons.drag_handle_outlined)),
        panelBuilder: (scrollController) => searchlocation(scrollController,context),
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(18.0), topRight: Radius.circular(18.0)),
            body:HomePage() ,
      )
    );
  }
}

Widget searchlocation(ScrollController scrollController,BuildContext context) {
  return ListView(
    shrinkWrap: true,
    padding: EdgeInsets.all(15.0),
    controller: scrollController,
    
    children: [
    Center(child: Icon(Icons.minimize_outlined)),
      SizedBox(
        height: 5.0,
      ),
    Material(
      child: Container(
        margin: EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Search your Location',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 15.0),
            ),
            SizedBox(height: 10.0),
            TextFormField(
                autofocus: false,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(
                      Icons.location_on_outlined,
                      color: Colors.black,
                    ),
                    hintText: 'search your Hotels',
                    suffixIcon: Icon(
                      Icons.expand_more,
                      color: Colors.black,
                    ))),
            SizedBox(height: 10.0),
            Text(
              'Type of House',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 15.0),
            ),
            TextFormField(
                autofocus: false,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(
                      Icons.house_outlined,
                      color: Colors.black,
                    ),
                    hintText: 'search your Hotels',
                    suffixIcon: Icon(
                      Icons.expand_more,
                      color: Colors.black,
                    ))),
            SizedBox(
              height: 10.0,
            ),
            Text(
              'Filter my price',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 15.0),
            ),
            SizedBox(
              height: 10.0,
            ),
            frs.RangeSlider(
              min: 0.0,
              max: 1000.0,
              lowerValue: 100,
              upperValue: 540,
              divisions: 5,
              showValueIndicator: true,
              valueIndicatorMaxDecimals: 1,
             
            ),
            
              Center(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  child: ElevatedButton(onPressed: (){}, child: Text('Confirm',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.black,
                    shape: StadiumBorder()
                  ),),
                ),
              
            )
          ],
        ),
      ),
    )
  ]);
}
