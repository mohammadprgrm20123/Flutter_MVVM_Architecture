import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mvvm_in_flutter/models/person_model.dart';
import 'package:mvvm_in_flutter/view_models/main_view_model.dart';
import 'package:pmvvm/pmvvm.dart';

class MainPage extends StatelessView<MainViewModel> {
  const MainPage({Key? key}) : super(key: key, reactive: false);

  @override
  Widget render(context, viewModel) {
    print('render');
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Selector<MainViewModel,int>(
            selector: (_, page) {
              return page.personList.length;
            },
            builder: (__, value, _) {
              if(viewModel.personList.isEmpty){
                return Expanded(child: const Center(child: Text('empty list')));
              }
              return Expanded(
                child: ListView.builder(
                    itemCount: viewModel.personList.length,
                    itemBuilder: (_, index) => Card(
                          child: Row(children: [
                            Expanded(
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      const Icon(Icons.person),
                                      Text(viewModel.personList[index].name),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      const Icon(Icons.person_pin),
                                      Text(viewModel.personList[index].family),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      const Icon(Icons.phone),
                                      Text(viewModel
                                          .personList[index].phoneNumber),
                                    ],
                                  )
                                ],
                              ),
                            ),
                            GestureDetector(
                                onTap: () {
                                  print(index);
                                  viewModel.remove(value: viewModel
                                      .personList[index]);
                                },
                                child: const Icon(Icons.delete))
                          ]),
                        )),
              );
            },
          ),
          Selector<MainViewModel, int>(
            builder: (BuildContext context, value, Widget? child) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: () {
                   viewModel.insert();
                  },
                  child: Text('   ADD    ($value)  person'),
                ),
              );
            },
            selector: (_, page) {
              return page.personList.length;
            },
          ),
        ],
      ),
    );
  }
}
