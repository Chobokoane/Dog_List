import 'package:dog_api/dog_model.dart';
import 'package:flutter/material.dart';

import 'dog_card.dart';

class DogList extends StatelessWidget {
  final List<Dog> doggos;

  const DogList(this.doggos, {Key? key}) : super(key: key);

  ListView _buildList(context) {
    return  ListView.builder(
      itemCount: doggos.length,
      itemBuilder: (context, int) {
        return  DogCard(doggos[int]);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return _buildList(context);
  }
}
