//
//  NavigationControllerAsMenuUITests.swift
//  NavigationControllerAsMenuUITests
//
//  Created by Jeff Kereakoglow on 2/12/16.
//  Copyright © 2016 Alexis Digital. All rights reserved.
//

import XCTest

class NavigationControllerAsMenuUITests: XCTestCase {

  override func setUp() {
    super.setUp()

    continueAfterFailure = false

    XCUIApplication().launch()
  }

  func testHomeLoadsOnStartup() {
    let app = XCUIApplication()
    // Assert that the large title, "Home", is showing. This is how we know that we're seeing the
    // home screen
    XCTAssert(app.staticTexts["homeViewTitle"].exists)
  }

  func testMenuButtonHomeLoadsHomeView() {
    let app = XCUIApplication()
    app.navigationBars["UIView"].buttons["Menu"].tap()
    app.tables.cells["home"].tap()

    XCTAssert(app.staticTexts["homeViewTitle"].exists)
  }

  func testMenuButtonContactLoadsContactView() {
    let app = XCUIApplication()
    app.navigationBars["UIView"].buttons["Menu"].tap()
    app.tables.cells["contact"].tap()

    XCTAssert(app.staticTexts["contactViewTitle"].exists)
  }

  func testMenuButtonNewsLoadsNewsView() {
    let app = XCUIApplication()
    app.navigationBars["UIView"].buttons["Menu"].tap()
    app.tables.cells["news"].tap()

    XCTAssert(app.staticTexts["newsViewTitle"].exists)
  }
}
