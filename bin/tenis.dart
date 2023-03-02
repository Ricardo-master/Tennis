import 'package:tenis/tenis.dart' as tenis;

class TennisGame {
  String player1Name;
  String player2Name;
  int player1Score = 0;
  int player2Score = 0;

  TennisGame(this.player1Name, this.player2Name);

  String getScore() {
    if (isGameOver()) {
      return getWinner() + " wins the game!";
    }
    if (isDeuce()) {
      return "Deuce";
    }
    if (isAdvantage()) {
      return "Advantage " + getAdvantagePlayer();
    }
    return translateScore(player1Score) + "-" + translateScore(player2Score);
  }

  void player1Scores() {
    player1Score++;
  }

  void player2Scores() {
    player2Score++;
  }

  String translateScore(int score) {
    switch (score) {
      case 0:
        return "Love";
      case 1:
        return "Fifteen";
      case 2:
        return "Thirty";
      case 3:
        return "Forty";
      default:
        return "";
    }
  }

  bool isGameOver() {
    return (player1Score >= 4 || player2Score >= 4) &&
        (player1Score - player2Score >= 2 || player2Score - player1Score >= 2);
  }

  String getWinner() {
    if (player1Score > player2Score) {
      return player1Name;
    } else {
      return player2Name;
    }
  }

  bool isDeuce() {
    return player1Score >= 3 &&
        player2Score >= 3 &&
        player1Score == player2Score;
  }

  bool isAdvantage() {
    return player1Score >= 3 &&
        player2Score >= 3 &&
        (player1Score - player2Score).abs() == 1;
  }

  String getAdvantagePlayer() {
    if (player1Score > player2Score) {
      return player1Name;
    } else {
      return player2Name;
    }
  }
}
