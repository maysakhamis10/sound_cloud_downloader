import 'package:equatable/equatable.dart';

abstract class CharacterEvent extends Equatable {


  @override
  List<Object> get props => [];


}

class Fetch extends CharacterEvent {}