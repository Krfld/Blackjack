// ignore_for_file: curly_braces_in_flow_control_structures

import 'package:flutter/material.dart';
import './.imports.dart';

final Cards cards = Cards();

class Cards {
  //static final List jokers = [15.1, 15.2]; // J
  static final List allCards = [
    14.1, 14.2, 14.3, 14.4, // A
    13.1, 13.2, 13.3, 13.4, // K
    12.1, 12.2, 12.3, 12.4, // Q
    11.1, 11.2, 11.3, 11.4, // J
    10.1, 10.2, 10.3, 10.4, // 10
    9.1, 9.2, 9.3, 9.4, // 9
    8.1, 8.2, 8.3, 8.4, // 8
    7.1, 7.2, 7.3, 7.4, // 7
    6.1, 6.2, 6.3, 6.4, // 6
    5.1, 5.2, 5.3, 5.4, // 5
    4.1, 4.2, 4.3, 4.4, // 4
    3.1, 3.2, 3.3, 3.4, // 3
    2.1, 2.2, 2.3, 2.4, // 2
  ];

  final Map suits = {
    4: MdiIcons.cardsHeart, // Hearts
    3: MdiIcons.cardsClub, // Clubs
    2: MdiIcons.cardsDiamond, // Diamonds
    1: MdiIcons.cardsSpade, // Spades
  };

  final Map colors = {
    4: Colors.redAccent,
    3: Colors.black54,
    2: Colors.redAccent,
    1: Colors.black54,
  };

  final Map ranks = {
    //5: 'J',
    4: 'A',
    3: 'K',
    2: 'Q',
    1: 'J',
  };

  ///
  ///
  ///

  List _deck = [];
  List get deck => _deck;

  ///
  ///
  ///

  List setup(int decks) {
    _deck = [];
    for (int i = 0; i < decks; i++) _deck.addAll(allCards);

    _deck.shuffle();
    return _deck;
  }

  double getCard({bool faceUp = true}) {
    /*if (reshuffle && cardsLeft == 0) {
      cards.shuffle();
      cardsLeft = cards.length;
      app.msg('Cards shuffled', prefix: 'Cards');
    }*/

    return _deck.take(1).single * faceUp ? 1 : -1;
  }

  /*List getCards(List deck, int amount) {
    if (deck.isEmpty) return [];
    deck.shuffle();
    return deck.take(amount).toList();
  }*/

  /*Map toMap(List cards) {
    Map hand = {};
    for (var card in cards) {
      if (!hand.containsKey(getValue(card)))
        hand.addAll({
          getValue(card): [getSuit(card)]
        });
      else
        hand[getValue(card)].add(getSuit(card));
    }
    return hand;
  }*/

  int getValue(double card) => card.toInt();

  int getSuit(double card) => (card * 10 % 10).toInt();

  String getRank(double card) {
    int rank = getValue(card);
    if (rank > 10) return ranks[rank - 10];
    return rank.toString();
  }
}
