import 'package:get/get.dart';

class HomeController extends GetxController {
  String currentPage = 'start_page';

  void changePage(String page){
    currentPage = page;
    update();
  }
}