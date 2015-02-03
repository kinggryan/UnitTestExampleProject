//
//  Card.swift
//  UnitTestsCardExample
//
//  Created by Ryan King on 2/3/15.
//  Copyright (c) 2015 Ryan King. All rights reserved.
//

import Foundation

class Card : NSObject {
    // Properties
    var contents:String = "";
    var chosen: Bool = false;
    var matched: Bool = false;
    
    func match(otherCards: Array<Card>) -> Int {
        var score = 0
        for card in otherCards {
            if(card.contents == contents) {
                score = 1;
            }
        }
        
        return score;
    }
}