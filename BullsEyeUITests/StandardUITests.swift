/// Copyright (c) 2024 Razeware LLC
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

class StandardUITests: XCTestCase {
  var app: XCUIApplication!
  
  override func setUpWithError() throws {
    NSLog("%@: %d", "Triggered Setup Phase at: ", Int(Date().timeIntervalSince1970))
    try super.setUpWithError()
    continueAfterFailure = false
    app = XCUIApplication()
    app.launch()
  }

  override func tearDown() {
    NSLog("%@: %d", "Triggered teardown Phase at: ", Int(Date().timeIntervalSince1970))
    super.tearDown()
    app.terminate()
  }

  private func coreTestLogic() {
    // given
    let slideButton = app.segmentedControls.buttons["Slide"]
    let typeButton = app.segmentedControls.buttons["Type"]
    let slideLabel = app.staticTexts["Get as close as you can to: "]
    let typeLabel = app.staticTexts["Guess where the slider is: "]
    let inputText = app.textFields["1-100"]
    let hitButton = app.buttons["hit me!"]

    // then
    if slideButton.isSelected {
      XCTAssertTrue(slideLabel.exists)
      XCTAssertFalse(typeLabel.exists)

      typeButton.tap()
      XCTAssertTrue(typeLabel.exists)
      XCTAssertFalse(slideLabel.exists)
    }
    
    inputText.tap()
    let randomNumber = Int.random(in: 1...100)
    let randomString = String(randomNumber)
    inputText.typeText(randomString)
    hitButton.tap()
    
    sleep(2)
    
    let okButton = app.buttons["OK"]
    okButton.tap()

    insertRandomnessToTests()
  }
  
  private func insertRandomnessToTests() {
    let epochTime = Int(Date().timeIntervalSince1970)
    
    NSLog("%@: %d", "Epoch Time for the Test", epochTime)
    
    if epochTime % 2 == 0 {
      NSLog("%@: %d", "Failing Assertion: ", epochTime % 2)
      XCTAssertTrue(2 == 4)
    } else {
      NSLog("%@: %d", "Success Assertion: ", epochTime % 2)
      XCTAssertTrue(2 == 2)
    }
  }

  func testGameStyleSwitch002() {
    coreTestLogic()
  }

  func testGameStyleSwitch003Skip() throws {
    try XCTSkipIf(1 == 1, "Skipping Test")
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

  func testGameStyleSwitch009Skip() throws {
    try XCTSkipIf(1 == 1, "Skipping Test")
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

  func testGameStyleSwitch019Skip() throws {
    try XCTSkipIf(1 == 1, "Skipping Test")
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

  func testGameStyleSwitch026Skip() throws {
    try XCTSkipIf(1 == 1, "Skipping Test")
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
  
  func testGameStyleSwitch030() {
    coreTestLogic()
  }

  func testGameStyleSwitch031() {
    coreTestLogic()
  }

  func testGameStyleSwitch032() {
    coreTestLogic()
  }
  
  func testGameStyleSwitch033() {
    coreTestLogic()
  }

  func testGameStyleSwitch034() {
    coreTestLogic()
  }

  func testGameStyleSwitch035() {
    coreTestLogic()
  }
  
  func testGameStyleSwitch036() {
    coreTestLogic()
  }

  func testGameStyleSwitch037() {
    coreTestLogic()
  }

  func testGameStyleSwitch038() {
    coreTestLogic()
  }
  
  func testGameStyleSwitch039() {
    coreTestLogic()
  }

  func testGameStyleSwitch040() {
    coreTestLogic()
  }

  func testGameStyleSwitch041() {
    coreTestLogic()
  }

  func testGameStyleSwitch042() {
    coreTestLogic()
  }
  
  func testGameStyleSwitch043() {
    coreTestLogic()
  }

  func testGameStyleSwitch044() {
    coreTestLogic()
  }

  func testGameStyleSwitch045() {
    coreTestLogic()
  }
  
  func testGameStyleSwitch046() {
    coreTestLogic()
  }

  func testGameStyleSwitch047() {
    coreTestLogic()
  }

  func testGameStyleSwitch048() {
    coreTestLogic()
  }
  
  func testGameStyleSwitch049() {
    coreTestLogic()
  }

  func testGameStyleSwitch050() {
    coreTestLogic()
  }
  
  func testGameStyleSwitch051() {
    coreTestLogic()
  }

  func testGameStyleSwitch052() {
    coreTestLogic()
  }
  
  func testGameStyleSwitch053() {
    coreTestLogic()
  }

  func testGameStyleSwitch054() {
    coreTestLogic()
  }

  func testGameStyleSwitch055() {
    coreTestLogic()
  }
  
  func testGameStyleSwitch056() {
    coreTestLogic()
  }

  func testGameStyleSwitch057() {
    coreTestLogic()
  }

  func testGameStyleSwitch058() {
    coreTestLogic()
  }
  
  func testGameStyleSwitch059() {
    coreTestLogic()
  }

  func testGameStyleSwitch060() {
    coreTestLogic()
  }
}

// Execution Count: 6
