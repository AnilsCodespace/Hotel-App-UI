import 'package:flutter/material.dart';

void main() {
  runApp(HotelHome());
}

class HotelHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(150.0),
          child: AppBar(
            elevation: 0,
            centerTitle: true,
            leading: const Icon(Icons.menu),
            backgroundColor: Colors.cyan,
            actions: [
              Container(
                padding: EdgeInsets.all(9),
                child: Icon(
                  Icons.favorite_border,
                  color: Colors.white,
                ),
              )
            ],
            title: const Text('Type Your Location'),
            toolbarHeight: 50,
            leadingWidth: 60,
            titleTextStyle: const TextStyle(
                height: 4.5,
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 17,
                letterSpacing: 2),
            flexibleSpace: Container(
              alignment: const Alignment(0, 0.4),
              padding: const EdgeInsets.all(20),
              child: TextField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    prefixIcon: const Icon(
                      Icons.search,
                      color: Colors.grey,
                    ),
                    hintText: 'Alappuzha, Kerala',
                    hintStyle: const TextStyle(color: Colors.black54),
                    contentPadding: const EdgeInsets.all(15),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30))),
                onChanged: (value) {
                  // do something
                },
              ),
            ),
          ),
        ),
        body: ListView(
          children: [
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 70,
                  width: 100,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: ContinuousRectangleBorder(
                            borderRadius: BorderRadius.circular(8)),
                        backgroundColor: Colors.pink,
                      ),
                      onPressed: () {},
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(Icons.restaurant),
                          Text("Restaurant")
                        ],
                      )),
                ),
                const SizedBox(width: 25),
                SizedBox(
                  height: 70,
                  width: 100,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blueAccent,
                      ),
                      onPressed: () {},
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [Icon(Icons.local_cafe), Text("Cafe")],
                      )),
                ),
                const SizedBox(width: 25),
                SizedBox(
                  height: 70,
                  width: 100,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                      ),
                      onPressed: () {},
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [Icon(Icons.hotel), Text("Hotel")],
                      )),
                )
              ],
            ),
            const SizedBox(height: 20),
            Card(
              color: Colors.white,
              child: Stack(
                children: [
                  Container(
                    width: 500,
                    height: 400,
                    color: Colors.white,
                  ),
                  Container(
                    height: 300,
                    width: 500,
                    child: const Image(
                        image: AssetImage(
                            'assets/photo-1611892440504-42a792e24d32.jpg')),
                  ),
                  const Positioned(
                    right: 35,
                    top: 10,
                    child: Icon(
                      Icons.star_border,
                      color: Colors.white,
                      size: 20.0,
                    ),
                  ),
                  Positioned(
                    bottom: 120.0,
                    right: 35.0,
                    child: Container(
                      padding: EdgeInsets.all(10.0),
                      color: Colors.white,
                      child: Text("\$40"),
                    ),
                  ),
                  Positioned(
                    bottom: 5,
                    left: 30,
                    child: Container(
                      padding: EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          const Text(
                            ('Awesome room near Backwater'),
                            style: TextStyle(
                                fontSize: 16.0, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 5.0,
                          ),
                          Text("Kuttanad,Alappuzha"),
                          const SizedBox(
                            height: 10.0,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: const <Widget>[
                              Icon(
                                Icons.star,
                                color: Colors.green,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.green,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.green,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.green,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.green,
                              ),
                              SizedBox(
                                width: 5.0,
                              ),
                              Text(
                                "(220 reviews)",
                                style: TextStyle(color: Colors.grey),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
