import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

List<String>sideBarList=["Order","Dashboard","About"];

class HomePage extends StatelessWidget {
  final StatefulNavigationShell navigationShell;
  const HomePage({super.key,required this.navigationShell});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Container(
            width: 300,
            margin:const  EdgeInsets.all(10),
            padding:const  EdgeInsets.all(10),
            height: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.cyanAccent.shade100
            ),child: Column(
            children: [
              for(int i=0;i<sideBarList.length;i++)...[
                InkWell(
                  onTap: (){
                    navigationShell.goBranch(i,
                    initialLocation: i==navigationShell.currentIndex);
                  },
                  child: Container(
                    height: 50,
                    width: double.infinity,
                    alignment: Alignment.center,
                    child: Text(sideBarList[i]),
                  ),
                ),
              ]
            ],
          )
          ),
          Expanded(child: navigationShell)
        ],
      ),

    );
  }
}
