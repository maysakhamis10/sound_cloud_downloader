import 'dart:async';
import 'dart:convert';
import 'package:bloc/bloc.dart';
import 'package:marvelapp/events/character_event.dart';
import 'package:marvelapp/models/character_model.dart';
import 'package:marvelapp/states/character_state.dart';
import 'package:meta/meta.dart';
import 'package:http/http.dart' as http;

// just from the class declaration we can tell that our PostBloc
// will be taking PostEvents as input and outputting PostStates.

class CharBloc extends Bloc<CharacterEvent, PostState> {

  final http.Client httpClient;

  CharBloc({@required this.httpClient});

  static int _ourLimit = 10 ;

  @override
  // TODO: implement initialState
  PostState get initialState => PostUninitialized();

  @override
  Stream<PostState> mapEventToState(CharacterEvent event) async* {
    final currentState = state;
    if (event is Fetch && !_hasReachedMax(currentState)) {

      try {
        if (currentState is PostUninitialized) {
          CharacterModel test = await _fetchChar();
          final posts = test.data.results;
          yield PostLoaded(characters: posts, hasReachedMax: false);
          return;
        }

        if (currentState is PostLoaded) {
          CharacterModel test = await _fetchChar();
          final posts = test.data.results;
          yield posts == null ? currentState.copyWith(hasReachedMax: true) :
          PostLoaded(
            characters: currentState.characters + posts,
            hasReachedMax: false,
          );
        }
      } catch (_) {
        yield PostError();
      }
    }
  }

  bool _hasReachedMax(PostState state) =>
      state is PostLoaded && state.hasReachedMax;

  Future<CharacterModel> _fetchChar()  async {
    String url = 'https://gateway.marvel.com/v1/public/characters?'
        'apikey=886ddafd6c98fa6a6fc84e2110c9015f&ts=1&hash=16bf4bd703ba2be816226ee8fa6e7197&offset=${_ourLimit++}';
    final response = await httpClient.get(url);
    print('OUR_URL_IS $url');
    print('API CONNECTED SUCCESSFULLy  ${response.statusCode}');
    if (response.statusCode == 200) {
      if (response.statusCode == 200) {
        return CharacterModel.fromJson(json.decode(response.body));
      } else {
        throw Exception('Failed to load characters');
      }
    }
  }


}
