//
//  DateFormatter+FormattersTests.swift
//  NewsReader
//
//  Created by Vladimír Zdražil on 02/04/2017.
//  Copyright © 2017 Vladimír Zdražil. All rights reserved.
//

import XCTest
@testable import NewsReader

class RelativeTimeDateFormatterTests: XCTestCase {
    let calendar = Calendar.current
    let baseDate = Date(timeIntervalSinceNow: 0)
    var dateFormatter: DateFormatter!

    override func setUp() {
        super.setUp()
        dateFormatter = DateFormatter.RelativeTimeFormatter
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testTodayDate() {
        let testDate = calendar.date(byAdding: .hour, value: 1, to: baseDate)!
        let relativeTime = dateFormatter.string(from: testDate)
        XCTAssertEqual(relativeTime, "Today")
    }

    func testYesterdayDate() {
        let testDate = calendar.date(byAdding: .day, value: -1, to: baseDate)!
        let relativeTime = dateFormatter.string(from: testDate)
        XCTAssertEqual(relativeTime, "Yesterday")
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}