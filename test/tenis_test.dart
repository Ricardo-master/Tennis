import 'package:test/test.dart';
import '../bin/tenis.dart';

void main() {
  test('Love All', () {
    TennisGame game = TennisGame("Player 1", "Player 2");
    expect(game.getScore(), equals("Love-Love"));
  });

  test('Fifteen Love', () {
    TennisGame game = TennisGame("Player 1", "Player 2");
    game.player1Scores();
    expect(game.getScore(), equals("Fifteen-Love"));
  });

  test('Thirty Love', () {
    TennisGame game = TennisGame("Player 1", "Player 2");
    game.player1Scores();
    game.player1Scores();
    expect(game.getScore(), equals("Thirty-Love"));
  });

  test('Forty Love', () {
    TennisGame game = TennisGame("Player 1", "Player 2");
    game.player1Scores();
    game.player1Scores();
    game.player1Scores();
    expect(game.getScore(), equals("Forty-Love"));
  });

  test('Love Fifteen', () {
    TennisGame game = TennisGame("Player 1", "Player 2");
    game.player2Scores();
    expect(game.getScore(), equals("Love-Fifteen"));
  });

  test('Love Thirty', () {
    TennisGame game = TennisGame("Player 1", "Player 2");
    game.player2Scores();
    game.player2Scores();
    expect(game.getScore(), equals("Love-Thirty"));
  });
}
