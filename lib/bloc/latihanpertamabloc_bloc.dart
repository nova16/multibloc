import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:equatable/equatable.dart';

part 'latihanpertamabloc_event.dart';
part 'latihanpertamabloc_state.dart';

class LatihanpertamablocBloc
    extends Bloc<LatihanpertamablocEvent, LatihanpertamablocState> {
  final List<String> textList = [
    'Text Awal Nih',
    'Text Berubah',
    'Text Berubah Lagi'
  ];
  LatihanpertamablocBloc() : super(InitialState()) {
    // on<GetDataEvent>(getData);
    on<EventPerubahText>(textBerubah);
  }

  void textBerubah(
      EventPerubahText event, Emitter<LatihanpertamablocState> emit) async {
    try {
      log("STATE is $state");
      if (state is InitialState) {
        int newsIndex = 0;
        emit(
          BerubahTextState(index: newsIndex, text: "---"),
        );
      } else if (state is BerubahTextState) {
        var stt = state as BerubahTextState;
        log("STT ${stt.index}");
        var index = stt.index + 1;
        if(index > textList.length - 1){
          index = 0;
        }
        emit(
          BerubahTextState(index: index, text: textList[stt.index]),
        );
      }
    } on Exception catch (e) {
      print(e);
    }
  }

  
  void getData(
      GetDataEvent event, Emitter<LatihanpertamablocState> emit) async {}

}
