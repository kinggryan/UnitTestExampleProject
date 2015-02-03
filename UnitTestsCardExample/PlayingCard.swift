//
//  PlayingCard.swift
//  UnitTestsCardExample
//
//  Created by Ryan King on 2/3/15.
//  Copyright (c) 2015 Ryan King. All rights reserved.
//

import Foundation

class PlayingCard : Card {
    var secretsuit: String = "";
    var suit:String {
        get {
            return secretsuit != "" ? secretsuit : "?"
        }
        set {
            secretsuit = suit
        }
    }
    var rank: Int = 0;
    
    class func validSuits() -> Array<String> {
        return ["♥","♦","♠","♣"]
    }
    
    class func rankStrings() -> Array<String> {
        return ["?","A","2","3","4","5","6","7","8","9","10","J","Q","K"]
    }
    
    class func maxRank() -> Int {
        return rankStrings().count - 1
    }
    
    func setRank(newRank:Int) {
        if newRank <= PlayingCard.maxRank() {
            rank = newRank
        }
    }
    
    func contents() -> String {
        let rankStrings = PlayingCard.rankStrings()
        return rankStrings[rank] + suit
    }
    
    func setSuit(newSuit:String) {
        if contains(PlayingCard.validSuits(),newSuit) {
            secretsuit = newSuit
        }
    }
}