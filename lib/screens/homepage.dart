import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70.0),
        child: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.0,
          leading: Container(
            margin: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(6.0),
                image: DecorationImage(
                    image: AssetImage('image/gap.png'), fit: BoxFit.fill)),
          ),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    'My location',
                    style: TextStyle(color: Colors.grey, fontSize: 12.0),
                  ),
                  Icon(
                    Icons.expand_more,
                    color: Colors.black,
                  )
                ],
              ),
              Text(
                'Coxs Bazar,BD',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 15.0,
                    fontWeight: FontWeight.w600),
              )
            ],
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.notifications_none_outlined,
                  color: Colors.black,
                )),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.filter_list_outlined,
                  color: Colors.black,
                ))
          ],
        ),
      ),
      body: Container(
          margin: EdgeInsets.all(10.0),
          child: Expanded(
            child: Column(mainAxisSize: MainAxisSize.min, children: [
              search(),
              SizedBox(
                height: 15.0,
              ),
              image(context),
              SizedBox(
                height: 15.0,
              ),
              category(),
              SizedBox(
                height: 15.0,
              ),
              homeTabBar()
              // tabBarList()
            ]),
          )),
      // ),
      // ),
    );
  }
}

Container homeTabBar() {
  return Container(
    child: DefaultTabController(
      length: 5,
      initialIndex: 0,
      child: Expanded(
        child: Column(
          // mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              height: 60.0,
              child: Expanded(
                child: TabBar(
                    labelColor: Colors.white,
                    unselectedLabelColor: Colors.white70,
                    indicatorSize: TabBarIndicatorSize.tab,
                    indicatorPadding: EdgeInsets.all(5.0),
                    indicatorColor: Colors.blue,
                    isScrollable: true,
                    tabs: <Widget>[
                      Tab(
                        child: Text(
                          '5 Star',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15.0,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      Tab(
                        child: Text(
                          '4 Star',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15.0,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      Tab(
                        child: Text(
                          '3 Star',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15.0,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      Tab(
                        child: Text(
                          '2 Star',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15.0,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      Tab(
                        child: Text(
                          '1 Star',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15.0,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ]),
              ),
            ),
            Expanded(
              child: TabBarView(children: [
                Container(child: tabBarList()),
                Container(child: tabBarList()),
                Container(child: tabBarList()),
                Container(child: tabBarList()),
                Container(child: tabBarList())
              ]),
            ),
          ],
        ),
      ),
    ),
  );
}
Container getCardDataForRateList(){
 return Container(
          height: 100.0,
          padding: EdgeInsets.all(8.0),
          child: Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0)),
            child: Row(
              children: [
                Container(
                  height: 80.0,
                  width: 80.0,
                    decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(10.0),
                        image: DecorationImage(
                            image: AssetImage('image/gap.png'),
                            fit: BoxFit.fill)
                            )),
                SizedBox(
                  width: 10.0,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                 Text(
                    'Prime Park Hotel',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 2.0,),
                  Text(
                    'Plot 58, Block C Hotel Motel Zone',
                    style: TextStyle(
                        color: Colors.grey),
                  ),
                  SizedBox(height: 2.0,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(Icons.bed_outlined),
                      SizedBox(width: 2.0,),
                      Text('4'),
                      SizedBox(width: 15.0,),
                      Icon(Icons.bedroom_baby_sharp),
                      SizedBox(width: 2.0,),
                      Text('1'),
                       SizedBox(width: 15.0,),
                      Icon(Icons.bathroom_outlined),
                       SizedBox(width: 2.0,),
                      Text('2'),
                    ],
                  )

                ]
                )
              ],
            ),
          ),
        );
}
Container tabBarList() {
  return Container(
    // height: 150.0,
    child: ListView(
      scrollDirection: Axis.vertical,
      // physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      children: <Widget>[
        getCardDataForRateList(),
        getCardDataForRateList(),
        getCardDataForRateList(),
        getCardDataForRateList(),
        getCardDataForRateList(),
      ],
    ),
  );
}

Container search() {
  return Container(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Flexible(
          child: TextFormField(
              autofocus: false,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                prefixIcon: Icon(
                  Icons.search,
                  color: Colors.black,
                ),
                hintText: 'search your Hotels',
              )),
        ),
        IconButton(onPressed: () {}, icon: Icon(Icons.tune_outlined))
      ],
    ),
  );
}

Container image(BuildContext context) {
  return Container(
    height: 125.0,
    // width: MediaQuery.of(context).size.width,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
        image: DecorationImage(
            image: AssetImage(
              'image/gap.png',
            ),
            fit: BoxFit.fill)),
  );
}

Container category() {
  return Container(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Category',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0),
            ),
            IconButton(onPressed: () {}, icon: Icon(Icons.more_horiz)),
          ],
        ),
        categoryData()
      ],
    ),
  );
}

Container categorydataitem() {
  return Container(
    decoration: BoxDecoration(
      shape: BoxShape.rectangle,
      borderRadius: BorderRadius.circular(6.0),
    ),
    height: 120.0,
    width: 280.0,
    child: Card(
        elevation: 0.0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6.0)),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 150.0,
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(6.0),
                    image: DecorationImage(
                        image: AssetImage('image/gap.png'), fit: BoxFit.fill)),
              ),
              SizedBox(
                height: 5.0,
              ),
              Text(
                'Modern',
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 5.0,
              ),
              Text(
                'More than 2300 house wating for rent & buy',
                style: TextStyle(color: Colors.grey),
              ),
              SizedBox(
                height: 5.0,
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 180,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text('From 30/month'),
                        style: ElevatedButton.styleFrom(
                            primary: Colors.black, shape: StadiumBorder()),
                      ),
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.arrow_forward,
                          color: Colors.purple[700],
                        ))
                  ],
                ),
              )
            ],
          ),
        )),
  );
}

Container categoryData() {
  return Container(
    height: 320.0,
    child: ListView(
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      padding: EdgeInsets.only(right: 10.0),
      children: [categorydataitem(), categorydataitem(), categorydataitem()],
    ),
  );
}
