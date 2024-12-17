part of 'characters_cubit.dart';

@immutable
sealed class CharactersState {}

final class CharactersInitial extends CharactersState {}

class CharectersLoaded extends CharactersState {
  final List<Character> characters;

  CharectersLoaded(this.characters);
  
}
