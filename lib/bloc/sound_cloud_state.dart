import 'package:equatable/equatable.dart';
import 'package:soundclouddownloader/models/SoundCloudModel.dart';

abstract class PostState extends Equatable {

  const PostState();

  @override
  List<Object> get props => [];


}

class TrackUninitialized  extends PostState{
  @override
  String toString() => 'TrackUninitialized';
}

class TrackError  extends PostState{
  @override
  String toString() => 'TrackError';

}

class TrackLoaded extends PostState {

  final List<Tracks> allTracks;

  const TrackLoaded({this.allTracks});


  @override
  List<Object> get props => [allTracks];

  @override
  String toString() =>
      'Loaded { tracks: ${allTracks.length}}';


}
