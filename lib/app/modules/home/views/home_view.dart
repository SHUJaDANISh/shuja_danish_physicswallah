import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // extendBodyBehindAppBar: true,
      appBar: AppBar(

        centerTitle: true,
        actions: [Container(
          child: Center(child: Row(

            children: [
              IconButton(onPressed: (){}, icon: Icon(Icons.west_rounded)),
              Expanded( child: Center(child: Text("Shuja Danish",style: TextStyle(fontSize: 20),))),
            ],
          )),
          height: 100,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xFF142079),
                Colors.pink
              ]
            )
          ),
        )],

      ),

      body:
          Obx(()=>controller.isLoading.value? Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircularProgressIndicator(),
                SizedBox(height: 20,),
                Text("Loading..."),
              ],
            ),
          ):ListView.builder(itemCount:controller.users.length,itemBuilder: (ctx, index){
            return Padding(
              padding:index ==0?EdgeInsets.only(top: 10,left: 10,right: 10,bottom: 5,):  const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
              child: Container(
                padding: EdgeInsets.only(left: 20),

                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [BoxShadow(color: Colors.grey,blurRadius: 10,offset: Offset(0,0),spreadRadius: 4,)],
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                    Text(controller.users[index].name,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.blue),),
                    Text(controller.users[index].qualification[0]),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      Text(controller.users[index].subjects[0]),
                      SizedBox(width: 20,),
                      Text("ID : ${controller.users[index].id}"),
                    ],),

                  ],),
                  Container(
                    width: 100,
                      height: 100,
                      child: Image.network(controller.users[index].profileImage)),
                ],),
              ),
            );
          }),),

    );
  }
}
