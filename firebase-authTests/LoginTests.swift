//
//  LoginTests.swift
//  firebase-authTests
//
//  Created by Albert Kornas on 1/29/22.
//

import XCTest
@testable import firebase_auth

struct UserLogin {
    let email: String
    let password: String
}

class LoginTests: XCTestCase {
    
    //Test that email textfield is empty upon loading
    func testInitialEmailValue() throws {
        let subject = ContentView()
        let text = subject.email
        XCTAssertEqual(text, "")
    }
    
    //Test a user login that exists in Firebase
    func testPositiveLogin() throws {
        let johnDoe = UserLogin(email: "johndoe@gmail.com", password: "password123")
        let subject = ContentView()
        subject.email = johnDoe.email
        subject.password = johnDoe.password
        DispatchQueue.main.async {
            subject.login()
            XCTAssertTrue(subject.loggedIn)
        }
    }
    
    //Test a user login that does not exist in Firebase
    func testNegativeLogin() throws {
        let fakeUser = UserLogin(email: "newuser@gmail.com", password: "somepassword")
        let subject = ContentView()
        subject.email = fakeUser.email
        subject.password = fakeUser.password
        DispatchQueue.main.async {
            subject.login()
            XCTAssertFalse(subject.loggedIn)
        }
    }
}
