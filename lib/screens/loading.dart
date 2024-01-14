import 'package:flutter/material.dart';
import 'package:flutter_basics/world_time.dart';

class loading extends StatefulWidget {
  const loading({super.key});

  @override
  State<loading> createState() => _loadingState();
}

class _loadingState extends State<loading> {

  String time = 'loading';

  void setupWorldTime()async{
    WorldTime instance = WorldTime(location: 'Berlin', flag: 'germany.png',url:'Europe/Berlin');
    await instance.getTime();
    print(instance.time);
    setState((){
      time = instance.time;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setupWorldTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Padding(
        padding: EdgeInsets.all(50.0),
        child: Text(time),
      ),
    );
  }
}
