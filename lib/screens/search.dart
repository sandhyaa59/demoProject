import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);

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
      body: SingleChildScrollView(
        child: Container(
            margin: EdgeInsets.all(10.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // mainAxisSize: MainAxisSize.min,
                  children: [
                    searchBox(),
                    SizedBox(
                      height: 15.0,
                    ),
                    result()
                  ]),
            ),
      )
    );
  }
}

Container searchBox() {
  return Container(
    // height: 50.0,
   
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Search For House',
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18.0),
          ),
          SizedBox(height: 10.0),
          Row(
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
                        suffixIcon: Icon(Icons.cancel))),
              ),
              IconButton(onPressed: () {}, icon: Icon(Icons.tune_outlined))
            ],
          ),
        ],
      ),
    
  );
}

Container result() {
  return Container(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          'Result For Coxs Bazar',
          style: TextStyle(
              color: Colors.black, fontSize: 20.0, fontWeight: FontWeight.w800),
        ),
        SizedBox(
          height: 10.0,
        ),
       Container(
         child: ListView(
              shrinkWrap: true,
              scrollDirection: Axis.vertical, children: [
              getResultList(),
              getResultList(),
              getResultList(),
              getResultList(),
              getResultList(),
              getResultList()
            ]),
       ),
      ],
    ),
  );
}

Container getResultList(){
return Container(
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
                              fit: BoxFit.fill))),
                  SizedBox(
                    width: 10.0,
                  ),
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'Muscat Holiday Resort',
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 2.0,
                        ),
                        Text(
                          '18% less than usual',
                          style: TextStyle(color: Colors.grey),
                        ),
                        SizedBox(
                          height: 2.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(Icons.bed_outlined),
                            SizedBox(
                              width: 2.0,
                            ),
                            Text('4'),
                            SizedBox(
                              width: 15.0,
                            ),
                            Icon(Icons.bedroom_baby_sharp),
                            SizedBox(
                              width: 2.0,
                            ),
                            Text('1'),
                            SizedBox(
                              width: 15.0,
                            ),
                            Icon(Icons.bathroom_outlined),
                            SizedBox(
                              width: 2.0,
                            ),
                            Text('2'),
                          ],
                        ),
                        Text('from 32/month')
                      ])
                ],
              ),
            ),
          
        );
}
