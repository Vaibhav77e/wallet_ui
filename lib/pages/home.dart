import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../screens/userhome.dart';
import 'package:wallet_ui/util/my_tile_view.dart';
import '../util/mycard.dart';
import '../util/my_button.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  //page controller
  final _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.pink,
        onPressed: () {},
        child: Icon(
          Icons.monetization_on_rounded,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
          child: Padding(
        padding: const EdgeInsets.only(top: 10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Userhome()));
              },
              icon: Icon(
                Icons.home,
                size: 30,
                color: Colors.pink[
                    200], //if const  used here it will throw error for Colors.pink[200] saying that const vaules can't be used.
              ),
            ),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.settings,
                  size: 30,
                  color: Colors.grey,
                )),
          ],
        ),
      )),
      body: SafeArea(
        child: Column(
          children: [
            Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: const <Widget>[
                          Text(
                            'My',
                            style: TextStyle(
                                fontSize: 26, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            ' Cards',
                            style: TextStyle(fontSize: 26),
                          ),
                        ],
                      ),
                      Container(
                          padding: EdgeInsets.all(4),
                          decoration: BoxDecoration(
                              color: Colors.grey[400], shape: BoxShape.circle),
                          child: Icon(Icons.add))
                    ],
                  ),
                ),
                SizedBox(height: 25),
                //card : details related user money
                // Mycard()

                Container(
                  height: 200,
                  // page view for adding cards in horizontal slide
                  child: PageView(
                    controller:
                        _controller, //keeps track on which we are currently
                    scrollDirection: Axis.horizontal,
                    children: [
                      Mycard(
                        balance: 500,
                        cardNumber: 25369884,
                        expiryMonth: 2,
                        expiryYear: 2027,
                        colors: Colors.blueAccent[200],
                      ),
                      Mycard(
                        balance: 15000,
                        cardNumber: 25368896,
                        expiryMonth: 6,
                        expiryYear: 2026,
                        colors: Colors.greenAccent,
                      ),
                      Mycard(
                        balance: 500,
                        cardNumber: 25780969,
                        expiryMonth: 7,
                        expiryYear: 2030,
                        colors: Colors.purpleAccent,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 25,
                ),

                //silding page indicator
                SmoothPageIndicator(
                  controller: _controller,
                  count: 3,
                  effect: JumpingDotEffect(activeDotColor: Colors.grey),
                ),
                SizedBox(
                  height: 25,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    //send button
                    MyButton('images/dollar.png', 'Pay'),

                    //pay button
                    MyButton('images/share.png', 'Send'),
                    //bills button
                    MyButton('images/invoice.png', 'Bill'),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                    color: Colors.grey[300], //needs to be fixed..
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  children: [
                    MyTileView(
                        'images/trend.png', 'Statitics', 'Payments and Income'),
                    MyTileView('images/transaction-history.png', 'Transaction',
                        'Transction History'),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
