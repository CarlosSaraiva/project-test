import 'package:bloc/bloc.dart';
import 'package:flutter_data/flutter_data.dart';
import 'package:injectable/injectable.dart';
import 'package:miccional_app/app/shared/models/test.dart';

import 'diary.state.dart';

@injectable
class DiaryCubit extends Cubit<DiaryState> {
  final Repository<Test> repository;

  DiaryCubit(this.repository) : super(DiaryState.init()) {
    repository.watchAll().stream.listen((state) {
      state.hasModel;
      if (state.isLoading) {
        emit(DiaryState.loading());
      } else {
        emit(DiaryState.loaded(state.model));
      }
    }, onDone: () {
      print('');
    });

    this.syncDataWithServer();
  }

  void syncDataWithServer() async {
    // final repository = getIt<Repository<Test>>();
    // final records = await repository.findAll(remote: false);
    // final unsynchedRecords = records.where((test) {
    //   return test.id == null;
    // });

    // Future.forEach<Test>(unsynchedRecords, (test) async {
    //   final other = await repository.findOne(test.id);
    //   return;
    // });

    // unsynchedRecords.forEach((teste) {});
  }
}
