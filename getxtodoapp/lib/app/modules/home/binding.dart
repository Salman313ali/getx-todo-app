import 'package:get/get.dart';
import 'package:getxtodoapp/app/data/providers/task/privoder.dart';
import 'package:getxtodoapp/app/modules/home/controller.dart';

import '../../data/services/storage/repository.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController(
            taskRepository: TaskRepository(
          taskProvider: TaskProvider(),
        )));
  }
}
