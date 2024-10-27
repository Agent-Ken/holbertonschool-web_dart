int whoWins(Map<String, int> teamA, Map<String, int> teamB) {
  int totalPointsA = (teamA['Free throws']! * 1) +
      (teamA['2 pointers']! * 2) +
      (teamA['3 pointers']! * 3);

  int totalPointsB = (teamB['Free throws']! * 1) +
      (teamB['2 pointers']! * 2) +
      (teamB['3 pointers']! * 3);

  if (totalPointsA > totalPointsB) {
    return 1;
  } else if (totalPointsA < totalPointsB) {
    return 2;
  } else {
    return 0;
  }
}
