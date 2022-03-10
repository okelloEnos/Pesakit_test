import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pesakit_test/UI/widgets/custom_notification.dart';
import 'package:pesakit_test/UI/widgets/custom_widgets.dart';

class PesakitHome extends StatefulWidget {
  const PesakitHome({Key? key}) : super(key: key);

  @override
  _PesakitHomeState createState() => _PesakitHomeState();
}

class _PesakitHomeState extends State<PesakitHome> {
  @override
  Widget build(BuildContext context) {
    final statusBarHeight = MediaQuery.of(context).padding.top;
    final fullHeight = MediaQuery.of(context).size.height;
    final fullWidth = MediaQuery.of(context).size.width;
    int selectedTab = 0;

    return Scaffold(
      bottomNavigationBar: Container(
        decoration:  const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(topLeft: Radius.circular(40.0), topRight: Radius.circular(40.0))
        ),
        child: BottomNavigationBar(
          selectedItemColor: Colors.orange,
          unselectedItemColor: Colors.orange,
          showUnselectedLabels: true,
          selectedLabelStyle: const TextStyle(
              color: Colors.teal
          ),
          unselectedLabelStyle: const TextStyle(
              color: Colors.teal
          ),
          onTap: (index){
            setState(() {
              selectedTab = index;
            });
          },
          currentIndex: selectedTab,
          items: const [
            // ignore: deprecated_member_use
            BottomNavigationBarItem(
              icon: Icon(Icons.account_balance_wallet),
              // ignore: deprecated_member_use
              title: Text('Home', style: TextStyle(
                  color: Colors.teal
              ),),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.remove_red_eye,),
              // ignore: deprecated_member_use
              title: Text('Insights', style: TextStyle(
                  color: Colors.teal
              ),),
            ),
            BottomNavigationBarItem(
              icon:
              Icon(Icons.account_circle_rounded,),
              // ignore: deprecated_member_use
              title: Text('My Profile', style: TextStyle(
                  color: Colors.teal
              ),),
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.logout,),
                // ignore: deprecated_member_use
                title: Text('Log out', style: TextStyle(
                    color: Colors.teal
                ),)
            ),
          ],
        ),
      ),
      body: Stack(
        children: [
          Column(
            children: [
              SizedBox(
                height: statusBarHeight,
                child: Container(
                    color: Colors.orangeAccent
                ),
              ),
              Card(
                elevation: 0,
                color: Colors.teal[400],
                margin: EdgeInsets.zero,
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(0), bottomRight: Radius.circular(0)
                    )
                ),
                child: SizedBox(
                  height: fullHeight / 2,
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                            icon: const Icon(CupertinoIcons.chevron_back),
                            color: Colors.white,
                            onPressed: () => {}, ),
                          // const SizedBox(width: 50,),
                          const Text('Insights', style:
                          TextStyle(color: Colors.white,
                              fontWeight: FontWeight.bold, fontSize: 22),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(right: 10),
                            child: CustomCounterIcon(),
                          )
                        ],),
                    ],
                  ),
                ),
              ),
              const Expanded(
                child : Card(
                  elevation: 5,
                  margin: EdgeInsets.zero,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30), topRight: Radius.circular(30)
                      )
                  ),
                  color: Colors.white,

                ),
              )
            ],
          ),
          Center(
            child: Padding(
              padding: EdgeInsets.only(
                  left: 20.0,
                  right: 20.0,
                  top: fullHeight * 0.2,
                  bottom: fullHeight * 0.1
              ),
              child: Card(
                color: Colors.white,
                child: SizedBox(
                  width: fullWidth,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        child: circularWidget(isSmall: false, value: "80", currentValue: 0.6),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('Good Health', style: TextStyle(color: Colors.black, fontSize: 24),),
                      ),
                      Text('Your operations and financials are in order', style: TextStyle(color: Colors.grey[400], fontSize: 15)),
                      Padding(
                        padding: const EdgeInsets.only(top: 50),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            circularWidget(isSmall: true, value: "20,000", currentValue: 0.8, text: "Cash"),
                            circularWidget(isSmall: true, value: "5,000", currentValue: 0.5, text: "e-Float"),
                            circularWidget(isSmall: true, value: "5", currentValue: 0.6, text: "Customers"),
                            circularWidget(isSmall: true, value: "20", currentValue: 0.4, text: "Transactions"),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
