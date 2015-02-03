//
//  CardTestCase.swift
//  UnitTestsCardExample
//
//  Created by Ryan King on 2/3/15.
//  Copyright (c) 2015 Ryan King. All rights reserved.
//

import Foundation
import XCTest

class CardTestCase : XCTestCase {
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testMatchesDifferentCardWithSameContents() {
        var card1 = Card()
        var card2 = Card()
        card1.contents = "one"
        card2.contents = "one"
        var handOfCards = [card2]
        
        var matchCount = card1.match(handOfCards)
        XCTAssertEqual(matchCount,1,"Should have matched")
    }
    
    func testDoesNotMatchDifferentCard() {
        var card1 = Card()
        var card2 = Card()
        card1.contents = "one"
        card2.contents = "two"
        var handOfCards = [card2]
        var matchCount = card1.match(handOfCards)
        XCTAssertEqual(matchCount,0,"No matches, right?")
    }
    
    func testMatchesForAtLeastOneCard() {
        var card1 = Card()
        var card2 = Card()
        var card3 = Card()
        card1.contents = "one"
        card2.contents = "two"
        card3.contents = "one"
        var handOfCards = [card2,card3]
        var matchCount = card1.match(handOfCards)
        XCTAssertEqual(matchCount,1,"Should have matched")
    }
}