import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:injectable/injectable.dart';
import 'package:miccional_app/core/di/injectable.dart';
import 'package:miccional_app/presenter/pages/first_page/first_page_controller.dart';
import 'package:mobx/mobx.dart';

@injectable
class FirstPage extends StatelessWidget {
  final FirstPageController controller = getIt<FirstPageController>();

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (_) {
      return Stack(
        children: [
          ListView.builder(
            itemCount: controller.users.length,
            itemBuilder: (context, int index) {
              return ListTile(
                title: Text(controller.users[index].name),
              );
            },
          ),
          Visibility(
            visible: controller.userFuture.status != FutureStatus.fulfilled &&
                controller.userFuture.status != FutureStatus.rejected,
            child: Align(
              child: CircularProgressIndicator(),
            ),
          )
        ],
      );
    });
  }
}
