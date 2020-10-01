import 'package:flutter/material.dart';
import 'package:flutter_data/flutter_data.dart';
import 'package:miccional_app/app/core/di/injectable.dart';
import 'package:miccional_app/app/shared/models/test.dart';
import 'package:uuid/uuid.dart';
import 'package:auto_route/auto_route.dart';

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
      body: StreamBuilder<DataState<List<Test>>>(
        stream: getIt<Repository<Test>>().watchAll().stream,
        builder: (context, state) {
          final data = state.data;

          return Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: data?.model?.length,
                  itemBuilder: (context, index) => data?.model != null
                      ? Text(
                          '${data.model[index].id} - ${data.model[index].name} - ${data.model[index].remoteId}')
                      : Text(''),
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
                            localId: Uuid().v4(),
                            name: formController.text,
                            avatar: 'teste',
                            createAt: DateTime.now(),
                          ).init().save();
                        },
                      ),
                      RaisedButton(
                        child: Text('Go to /welcome'),
                        onPressed: () {
                          context.navigator.push('/welcome');
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
