import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:quiz_app_api/viewmodel/api_calls.dart';

class DataController extends GetxController {
  // storing the data from api
  var randomData;
  //to change the visibility of next button in the quiz screen
  bool visibility = false;
  changeVisibility() {
    visibility = true;
    update();
  }

  @override
  void onInit() {
    randomData = ApiCalls.getData();
    super.onInit();
    print(randomData);
  }
}
