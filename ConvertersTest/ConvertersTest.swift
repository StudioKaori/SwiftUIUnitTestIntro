//
//  ConvertersTest.swift
//  ConvertersTest
//
//  Created by Kaori Persson on 2022-06-21.
//

import XCTest

class ConvertersTest: XCTestCase {
    // AAA- arrange, assert and act
    
    
    // Test subject
    // sut stands for system under the test
    private var sut: Converters!
    
    // Initialise converter
    override func setUpWithError() throws {
        sut = Converters()
    }
    
    // sut will be torn down each test finished
    override func tearDownWithError() throws {
        sut = nil
    }
    
    
    
    func test_convert10_returns1080() {
        let actual = sut.convertEuroToUSD(euro: "10")
        let expected = "$10.80"
        
        XCTAssertEqual(actual, expected)
    }
    
    func test_convertNeg10_returnsErrorMessage() {
        let actual = sut.convertEuroToUSD(euro: "-10")
        let expected = "Please enter a positive number."
        
        XCTAssertEqual(actual, expected)
    }
    
    func test_sampleTest() {
        let actual = true
        
        XCTAssertTrue(actual)
    }
}
