/// Copyright (c) 2021. Razeware LLC
/// 
/// Permission is hereby granted, free of charge, to any person obtaining a copy
/// of this software and associated documentation files (the "Software"), to deal
/// in the Software without restriction, including without limitation the rights
/// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
/// copies of the Software, and to permit persons to whom the Software is
/// furnished to do so, subject to the following conditions:
/// 
/// The above copyright notice and this permission notice shall be included in
/// all copies or substantial portions of the Software.
/// 
/// Notwithstanding the foregoing, you may not use, copy, modify, merge, publish,
/// distribute, sublicense, create a derivative work, and/or sell copies of the
/// Software in any work that is designed, intended, or marketed for pedagogical or
/// instructional purposes related to programming, coding, application development,
/// or information technology.  Permission for such use, copying, modification,
/// merger, publication, distribution, sublicensing, creation of derivative works,
/// or sale is expressly withheld.
/// 
/// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
/// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
/// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
/// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
/// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
/// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
/// THE SOFTWARE.

import XCTest

class BullsEyeUITests: XCTestCase {
  var app: XCUIApplication!
  
  override func setUpWithError() throws {
    try super.setUpWithError()
    continueAfterFailure = false
    app = XCUIApplication()

    app.activate()

    app.launchEnvironment = ["browserstack_flag": "1"]
    app.launchArguments += ["-AppleLocale", "en_GB", "-debugServer"]

    app.launch()
  }

  override func tearDown() {
    super.tearDown()
    app.terminate()
  }

  private func coreTestLogic() {
    // given
    let slideButton = app.segmentedControls.buttons["Slide"]
    let typeButton = app.segmentedControls.buttons["Type"]
    let slideLabel = app.staticTexts["Get as close as you can to: "]
    let typeLabel = app.staticTexts["Guess where the slider is: "]

    // then
    if slideButton.isSelected {
      XCTAssertTrue(slideLabel.exists)
      XCTAssertFalse(typeLabel.exists)

      typeButton.tap()
      XCTAssertTrue(typeLabel.exists)
      XCTAssertFalse(slideLabel.exists)
    } else if typeButton.isSelected {
      XCTAssertTrue(typeLabel.exists)
      XCTAssertFalse(slideLabel.exists)

      slideButton.tap()
      XCTAssertTrue(slideLabel.exists)
      XCTAssertFalse(typeLabel.exists)
    }
  }
  
  func testGameStyleSwitch001() {
    coreTestLogic()
  }

  func testGameStyleSwitch002() {
    coreTestLogic()
  }

  func testGameStyleSwitch003() {
    coreTestLogic()
  }

  func testGameStyleSwitch004() {
    coreTestLogic()
  }

  func testGameStyleSwitch005() {
    coreTestLogic()
  }

  func testGameStyleSwitch006() {
    coreTestLogic()
  }

  func testGameStyleSwitch007() {
    coreTestLogic()
  }

  func testGameStyleSwitch008() {
    coreTestLogic()
  }

  func testGameStyleSwitch009() {
    coreTestLogic()
  }

  func testGameStyleSwitch010() {
    coreTestLogic()
  }

  func testGameStyleSwitch011() {
    coreTestLogic()
  }

  func testGameStyleSwitch012() {
    coreTestLogic()
  }

  func testGameStyleSwitch013() {
    coreTestLogic()
  }

  func testGameStyleSwitch014() {
    coreTestLogic()
  }

  func testGameStyleSwitch015() {
    coreTestLogic()
  }

  func testGameStyleSwitch016() {
    coreTestLogic()
  }

  func testGameStyleSwitch017() {
    coreTestLogic()
  }

  func testGameStyleSwitch018() {
    coreTestLogic()
  }

  func testGameStyleSwitch019() {
    coreTestLogic()
  }

  func testGameStyleSwitch020() {
    coreTestLogic()
  }

  func testGameStyleSwitch021() {
    coreTestLogic()
  }

  func testGameStyleSwitch022() {
    coreTestLogic()
  }

  func testGameStyleSwitch023() {
    coreTestLogic()
  }

  func testGameStyleSwitch024() {
    coreTestLogic()
  }

  func testGameStyleSwitch025() {
    coreTestLogic()
  }

  func testGameStyleSwitch026() {
    coreTestLogic()
  }

  func testGameStyleSwitch027() {
    coreTestLogic()
  }

  func testGameStyleSwitch028() {
    coreTestLogic()
  }

  func testGameStyleSwitch029() {
    coreTestLogic()
  }
}

class BullsEyeUITests2: XCTestCase {
  var app: XCUIApplication!
  
  override func setUpWithError() throws {
    try super.setUpWithError()
    continueAfterFailure = false
    app = XCUIApplication()
    app.launch()
  }
  
  func testGameStyleSwitch() {
    // given
    let slideButton = app.segmentedControls.buttons["Slide"]
    let typeButton = app.segmentedControls.buttons["Type"]
    let slideLabel = app.staticTexts["Get as close as you can to: "]
    let typeLabel = app.staticTexts["Guess where the slider is: "]
    
    // then
    if slideButton.isSelected {
      XCTAssertTrue(slideLabel.exists)
      XCTAssertFalse(typeLabel.exists)

      typeButton.tap()
      XCTAssertTrue(typeLabel.exists)
      XCTAssertFalse(slideLabel.exists)
    } else if typeButton.isSelected {
      XCTAssertTrue(typeLabel.exists)
      XCTAssertFalse(slideLabel.exists)

      slideButton.tap()
      XCTAssertTrue(slideLabel.exists)
      XCTAssertFalse(typeLabel.exists)
    }
  }
}
