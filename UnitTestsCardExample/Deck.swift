//
//  Deck.swift
//  UnitTestsCardExample
//
//  Created by Ryan King on 2/3/15.
//  Copyright (c) 2015 Ryan King. All rights reserved.
//

import Foundation

class Deck : NSObject {
    var cards : Array<Card> = []
    
    func addCard(card: Card, atTop:Bool) {
        if atTop {
            cards.insert(card, atIndex: 0)
        }
        else {
            cards.append(card)
        }
    }
    
    func addCard(card:Card) {
        addCard(card,atTop:false)
    }
    
    func drawRandomCard() -> Card? {
        var randomCard: Card? = nil
        
        if cards.count > 0 {
            var index = Int(arc4random()) % cards.count
            randomCard = self.cards[index]
            self.cards.removeAtIndex(index)
        }
        
        return randomCard
    }
}