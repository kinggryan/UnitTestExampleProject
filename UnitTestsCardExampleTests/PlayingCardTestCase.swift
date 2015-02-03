//
//  PlayingCardTestCase.swift
//  UnitTestsCardExample
//
//  Created by Ryan King on 2/3/15.
//  Copyright (c) 2015 Ryan King. All rights reserved.
//

import Foundation
import XCTest

class PlayingCardTestCase : XCTestCase {
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testTheValidSuits()
    {
        var theSuits = PlayingCard.validSuits()
        var howMany = theSuits.count
        XCTAssertEqual(howMany, 4, "Should be only 4");
        XCTAssertTrue(contains(theSuits,"♥"), "@Must have a heart");
        XCTAssertTrue(contains(theSuits,"♦"), "@Must have a diamond");
        XCTAssertTrue(contains(theSuits,"♠"), "@Must have a spade");
        XCTAssertTrue(contains(theSuits,"♣"), "@Must have a club");
    }
    
    func testSetSuitAnyValidAccepted() {
        var card = PlayingCard()
        card.setSuit("♥")
        XCTAssertEqual(card.suit, "♥", "Should have saame suit")
        card.setSuit("♦")
        XCTAssertEqual(card.suit, "♦", "Should have saame suit")
        card.setSuit("♠")
        XCTAssertEqual(card.suit, "♠", "Should have saame suit")
        card.setSuit("♣")
        XCTAssertEqual(card.suit, "♣", "Should have saame suit")
    }
    
    func testSetSuitInvalidRejected() {
        var card = PlayingCard()
        card.setSuit("A")
        XCTAssertEqual(card.suit,"?", "Should not have been recognized")
        XCTAssertNotEqual(card.suit,"A","Should not have matched")
    }
}