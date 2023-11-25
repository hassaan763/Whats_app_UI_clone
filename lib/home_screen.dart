import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: PreferredSize(preferredSize: Size.fromHeight(100),
          child:AppBar(
            elevation: 20,
            backgroundColor: Colors.teal,
            title: Text('Whats App'),
            bottom: TabBar(
              indicatorColor: Colors.white,
              tabs: [
                Container(
                  child: Tab(
                    child: Icon(Icons.groups),
                  ),
                ),
                Container(
                  child: Tab(
                    child: Text('chats'),
                  ),
                ),
                Container(
                  child: Tab(
                    child: Text('Status'),
                  ),
                ),
                Container(
                  child: Text('Calls'),
                ),
              ],
            ),
            actions: [

              Icon(Icons.camera_alt),
              SizedBox(width: 20,),

              Icon(Icons.search),
              SizedBox(width: 10,),

              PopupMenuButton(
                  icon: Icon(Icons.more_vert_outlined,),
                  itemBuilder: (context)=>[
                    PopupMenuItem(child: Text('more'),
                      value: 1,
                    ),
                    PopupMenuItem(child: Text('setings'),
                      value: 2,
                    ),
                    PopupMenuItem(child: Text('scan'),
                      value: 3,
                    ),
                  ]
              ),
              SizedBox(width: 10,),

            ],
          ),
          ),

          body: TabBarView(
            children: [
              Text('groups'),
              ListView.builder( itemCount: 10,
                  itemBuilder: (context, index)
              {
                return  const ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage('https://resizing.flixster.com/ZCuzsQj8V6ekkoUyPDiXr-0aN9s=/206x305/v2/https://flxt.tmsimg.com/assets/p3546099_p_v8_bc.jpg'),
                  ),
                  title: Text('name'),
                  subtitle: Text('Last messages'),
                  trailing: Column(
                    children: [
                      Text('time_stamp'),
                      Padding(
                        padding: const EdgeInsets.only(left: 50,top: 8),
                        child: Icon(
                          Icons.volume_mute,
                        ),
                      ),
                    ],
                  ),
                );
              }
              ), //chats menu
              ListView.builder(itemBuilder: (context,index){
                  if(index==0){
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('new updates'),
                          ListTile(
                            title: Text('status'),
                            subtitle: Text('time_stamp'),
                            leading: Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                //borderRadius: Radius.circular(20),
                                border: Border.all(
                                  width: 2,
                                  color: Colors.green,
                                ),
                              ),
                              child: CircleAvatar(
                                //radius: 10,
                                  backgroundImage:  NetworkImage(
                                      'https://resizing.flixster.com/ZCuzsQj8V6ekkoUyPDiXr-0aN9s=/206x305/v2/https://flxt.tmsimg.com/assets/p3546099_p_v8_bc.jpg'
                                  )
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  }
                  else{
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('old status'),
                        ListTile(
                          title: Text('status'),
                          subtitle: Text('time_stamp'),
                          leading: Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              //borderRadius: Radius.circular(20),
                              border: Border.all(
                                width: 2,
                                color: Colors.green,
                              ),
                            ),
                            child: CircleAvatar(
                              //radius: 10,
                                backgroundImage:  NetworkImage(
                                    'https://resizing.flixster.com/ZCuzsQj8V6ekkoUyPDiXr-0aN9s=/206x305/v2/https://flxt.tmsimg.com/assets/p3546099_p_v8_bc.jpg'
                                )
                            ),
                          ),
                        ),
                      ],
                    );
                  }
              }), //status_menu
              ListView.builder(itemBuilder: (context,index) {return const ListTile(
                  leading: CircleAvatar(backgroundImage: NetworkImage(
                      'https://resizing.flixster.com/ZCuzsQj8V6ekkoUyPDiXr-0aN9s=/206x305/v2/https://flxt.tmsimg.com/assets/p3546099_p_v8_bc.jpg'
                  ),
                  ),
                  subtitle:
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(children: [
                        Icon(Icons.call_received),
                        Text('Time_stamp'),
                      ],
                      )
                    ],
                  ),
                  trailing: Icon(Icons.call, color: Colors.green,),
                  title: Text('name'),
                );}), //cals menu
            ],
          ),
        ),
    );
  }
}
