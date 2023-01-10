import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'model.dart';
import 'bloc/latihanpertamabloc_bloc.dart';

class TextBerubahController extends StatelessWidget {
  final String text;
  const TextBerubahController({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget> [
        TextBerubah(text: text),
        ElevatedButton(onPressed: ()=> context.read<LatihanpertamablocBloc>().add(EventPerubahText()),
         child: Text("Ubah Text"))
      ],
    );
  }
}
