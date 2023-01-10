part of 'latihanpertamabloc_bloc.dart';

abstract class LatihanpertamablocState extends Equatable {
  const LatihanpertamablocState();

  @override
  List<Object> get props => [];
}

class InitialState extends LatihanpertamablocState{}

@immutable
class BerubahTextState extends LatihanpertamablocState {
  final int index;
  final String text;

  // const BerubahTextState.empty()
  //     : index = 0,
  //       text = 'Ini nanti berubah';

  const BerubahTextState({required this.index, required this.text});

  @override
  List<Object> get props => [index, text];
}

@immutable
class GetDataState extends LatihanpertamablocState {
  final String judul, deskripsi;
  final Icon image;

  const GetDataState.empty()
      : judul = "Loading Judul",
        deskripsi = "Loading Deskripsi",
        image = const Icon(Icons.access_time_filled);

  const GetDataState(
      {required this.judul, required this.deskripsi, required this.image});

  @override
  List<Object> get props => [judul, deskripsi, image];
}
