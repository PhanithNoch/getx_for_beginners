import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_for_beginners/controllers/counter_controller.dart';

void main() {
  runApp(Home());
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CounterScreen(),
    );
  }
}

class CounterScreen extends StatelessWidget {
  CounterController controller = Get.put(
      CounterController()); // Rather Controller controller = Controller();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('GetX'),
        ),
        body: Obx(() => ListView.builder(
              itemCount: controller.lstUsers.value.length,
              itemBuilder: (context, index) {
                var user = controller.lstUsers[index];
                return Card(
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(user.avatar.toString()),
                    ),
                    title:
                        Text(controller.lstUsers[index].firstName.toString()),
                    subtitle: Text(
                      user.email.toString(),
                    ),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
                );
              },
            )));
  }
}
