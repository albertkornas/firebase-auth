//
//  ContentViewTests.swift
//  firebase-auth
//
//  Created by Albert Kornas on 1/29/22.
//

import XCTest
import ViewInspector
@testable import showcase

class ContentViewTests: XCTestCase {

    func testExample() throws {
        let subject = ContentView()
        let text = try subject.inspect().text().string()
        XCTAssertEqual(text, "Hello, world!")
    }

}

extension ContentView: Inspectable {}
