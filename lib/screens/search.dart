import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  const Search({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70.0),
        child: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.0,
          leading: Container(margin: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(6.0),
                image: DecorationImage(
                  image: AssetImage('image/gap.png'),
                  fit: BoxFit.fill
                )),
          ),
          title: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    'My location',
                    style: TextStyle(color: Colors.grey, fontSize: 12.0),
                  ),Icon(Icons.arrow_right,color: Colors.black,)
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
      body:Container(
          margin: EdgeInsets.all(10.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
               children: [
              searchBox(),
              SizedBox(
                height: 15.0,
              ), ])),
    );
  }
}

Container searchBox (){
  return Container(
   child: Column(crossAxisAlignment: CrossAxisAlignment.start,
     children: [
      //  Text('Search For House',style: TextStyle(
      //    color: Colors.black,
      //    fontWeight: FontWeight.bold,fontSize: 18.0
      //  ),),
      //  SizedBox(height: 5.0),
       Flexible(
         child: TextFormField(
              autofocus: false,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.search,color: Colors.black,),
                  hintText: 'search your Hotels',
                  // suffixIcon: IconButton(onPressed: (){}, icon: Icon(Icons.cancel))
                 
                  )
            ),
       ),
          IconButton(onPressed: () {}, icon: Icon(Icons.filter_list_outlined))
     ],
   ),
  );
}