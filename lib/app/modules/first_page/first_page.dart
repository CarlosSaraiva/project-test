import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:injectable/injectable.dart';
import 'package:miccional_app/app/core/di/injectable.dart';
import 'package:miccional_app/app/modules/first_page/first_page_controller.dart';
import 'package:mobx/mobx.dart';

@injectable
class FirstPage extends StatelessWidget {
  final FirstPageController controller = getIt<FirstPageController>();

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (_) {
      final result = controller.userFuture.result;

      return Scaffold(
        appBar: AppBar(
          title: Text('First Page'),
        ),
        body: Stack(
          children: [
            ListView.builder(
              itemCount: result?.fold((_) => 0, (users) => users.length),
              itemBuilder: (context, int index) {
                return ListTile(
                  title: result?.fold(
                    (_) => Text(''),
                    (users) => Text(users[index].name),
                  ),
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
        ),
      );
    });
  }
}
