import 'package:get/get.dart';

import '../../Services/Db/tournaments_db_service.dart';
import '../../models/models.dart';

class LandingController extends GetxController {
  var selectedTabIndex = 0.obs;
  late TournamentsDbService tournamentsDbService;

  final tournaments = <TournamentModel>
  [
    TournamentModel(1, "Tour1", "Brackets", "ByRating"),
    TournamentModel(1, "Tour2", "Brackets", "ByRating"),
    TournamentModel(1, "Tour3", "Brackets", "ByRating"),
    TournamentModel(1, "Tour4", "Brackets", "ByRating"),
    TournamentModel(1, "Tour5", "Brackets", "ByRating"),
  ].obs;

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
