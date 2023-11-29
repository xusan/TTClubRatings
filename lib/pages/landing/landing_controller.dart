import 'package:get/get.dart';

import '../../Services/Db/tournaments_db_service.dart';

class LandingController extends GetxController {
  var selectedTabIndex = 0.obs;
  late TournamentsDbService tournamentsDbService;
  void onTabSelected(int index) {
    selectedTabIndex.value = index;
  }

  @override
  void onInit() async
  {
    super.onInit();

    //await 3.delay();
    tournamentsDbService = Get.find<TournamentsDbService>();
  }

  @override
  void dispose() 
  {
    super.dispose();
  }

  void onAddTournamentClicked() {}
}
