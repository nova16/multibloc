import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'bloc/latihanpertamabloc_bloc.dart';
import 'controller.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (context) =>
                LatihanpertamablocBloc()..add(EventPerubahText()))
      ],
      child: MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: const Text("Latihan Bloc"),
          ),
          body: BlocConsumer<LatihanpertamablocBloc, LatihanpertamablocState>(
            listener: (context, state) {
              // TODO: implement listener
            },
            builder: (context, state) {
              log("STATE $state");
              if (state is InitialState) {
                return const Center(child: Text("Loading"));
              } else if (state is BerubahTextState) {
                return TextBerubahController(text: state.text);
              } else {
                return const Center(child: Text("Loading"));
              }
            },
          ),
        ),
      ),
    );
  }
}
