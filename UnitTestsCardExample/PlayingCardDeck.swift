//
//  PlayingCardDeck.swift
//  UnitTestsCardExample
//
//  Created by Ryan King on 2/3/15.
//  Copyright (c) 2015 Ryan King. All rights reserved.
//

import Foundation

class PlayingCardDeck : Deck {
    override init() {
        super.init()
        
        for suit in PlayingCard.validSuits() {
            for var rank = 1 ; rank <= PlayingCard.maxRank() ; rank++ {
                var card = PlayingCard()
                card.rank = rank;
                card.suit = suit;
                addCard(card)
            }
        }
    }
}