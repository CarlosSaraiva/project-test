import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_data/flutter_data.dart';
import 'package:miccional_app/app/core/di/injectable.dart';
import 'package:miccional_app/app/shared/models/test.dart';

import 'diary.cubit.dart';
import 'diary.state.dart';

class DiaryPage extends StatefulWidget {
  const DiaryPage({Key key}) : super(key: key);

  @override
  _DiaryPageState createState() => _DiaryPageState();
}

class _DiaryPageState extends State<DiaryPage> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController formController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<DiaryCubit, DiaryState>(
        cubit: getIt<DiaryCubit>(),
        builder: (context, state) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: state.maybeWhen(
                  init: () {
                    return Text('Inicial');
                  },
                  loaded: (diaries) {
                    return ListView.builder(
                      itemCount: diaries.length,
                      itemBuilder: (context, index) => Text(
                        '${diaries[index].id} - ${diaries[index].name}',
                      ),
                    );
                  },
                  loading: () => CircularProgressIndicator(),
                  orElse: () => Text('Algo aconteceu'),
                ),
              ),
              Expanded(
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      TextFormField(
                        controller: formController,
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Enter some value';
                          }
                          return null;
                        },
                      ),
                      RaisedButton(
                        child: Text('Submit'),
                        onPressed: () {
                          Test(
                            name: formController.text,
                            avatar: 'teste',
                            createAt: DateTime.now(),
                          ).init().save();
                        },
                      )
                    ],
                  ),
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
