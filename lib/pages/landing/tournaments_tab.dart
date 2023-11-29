import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:tt_club_ratings/pages/landing/landing_controller.dart';

class TournametsView extends StatelessWidget 
{
  const TournametsView({super.key});

  @override
  Widget build(BuildContext context) 
  {
    final controller = Get.find<LandingController>();

    return Scaffold(      
      appBar: AppBar(     
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,        
        title: const Text("Tournaments"),  
      ),
      body: const Center(
        child: Center(child: Text("Tournaments "),),   
      ),
      floatingActionButton: FloatingActionButton(        
        onPressed: controller.onAddTournamentClicked,
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}