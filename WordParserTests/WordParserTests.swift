//
//  WordParserTests.swift
//  WordParserTests
//
//  Created by Illya Gordiyenko on 2018-04-25.
//  Copyright © 2018 Illya Gordiyenko. All rights reserved.
//

import XCTest
@testable import WordParser

class WordParserTests: XCTestCase {
    
    var parseManager:ParserManager!
    
    override func setUp() {
        super.setUp()

        let wordList = ["apple", "pie", "shoe", "second", "secondary"]
        parseManager = ParserManager.init(wordList: wordList)
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testParserBasic() {
        
        let correctAnswer = ["apple", "pie", "shoe"]
        let parsedAnwer = parseManager.parse(input: "applepieshoe")
        
        XCTAssert(correctAnswer == parsedAnwer)
        
    }
    
    func testParserLongString() {
        
        let correctAnswer = ["apple", "pie", "shoe", "apple"]
        let parsedAnwer = parseManager.parse(input: "applepieshoeasdvljaosfnvpibafvsfapple")
        
        XCTAssert(correctAnswer == parsedAnwer)
        
    }
    
    func testParserDoubleValue() {
        
        let correctAnswer = ["second", "secondary"]
        let parsedAnwer = parseManager.parse(input: "secondary")
        
        XCTAssert(correctAnswer == parsedAnwer)
        
    }
    
    func testParserWrongValue() {
        
        let correctAnswer = ["second", "secondary", "other"]
        let parsedAnwer = parseManager.parse(input: "secondary")
        
        XCTAssert(correctAnswer != parsedAnwer)
        
    }
    
    
}
