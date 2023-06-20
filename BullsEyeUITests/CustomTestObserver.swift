/// Copyright (c) 2023 Razeware LLC
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

public class CustomTestObserver: NSObject, XCTestObservation {
  
  // This init is called first thing as the test bundle starts up and before any test
  // initialization happens
  override init() {
      super.init()
      // We don't need to do any real work, other than register for callbacks
      // when the test suite progresses.
      // XCTestObservation keeps a strong reference to observers
      XCTestObservationCenter.shared.addTestObserver(self)
  }
  
  public func testBundleDidFinish(_ testBundle: Bundle) {
      XCTestObservationCenter.shared.removeTestObserver(self)
  }
  
  public func testBundleWillStart(_ testBundle: Bundle) {
    NSLog("%@", "[Hook] Test Bundle Will Start: " + testBundle.debugDescription);
  }
  
  public func testSuiteWillStart(_ testSuite: XCTestSuite) {
    NSLog("%@", "[Hook] Test Suite Will Start: " + testSuite.debugDescription);
  }
  
  public func testCaseWillStart(_ testCase: XCTestCase) {
    NSLog("%@", "[Hook] Test Case Will Start testcaseName: " + testCase.name);
    NSLog("%@", "[Hook] Test Case Will Start testcasedesc: " + testCase.description);
    NSLog("[Hook] Test Case Will Start testcase continue after fail: %d", testCase.continueAfterFailure);
    NSLog("[Hook] Test Case Will Start executionTimeAllowance: %d", testCase.executionTimeAllowance);
    NSLog("[Hook] Test Case Will Start testCaseCount: %d", testCase.testCaseCount);
    NSLog("%@", "[Hook] Test Case Will Start testRun: " + testCase.testRun.debugDescription);
  }
  
  public func testCaseDidFinish(_ testCase: XCTestCase) {
    NSLog("%@", "[Hook] Test Case Did Finish testcaseName: " + testCase.name);
    NSLog("%@", "[Hook] Test Case Did Finish testcasedesc: " + testCase.description);
    NSLog("[Hook] Test Case Did Finish testcase continue after fail: %d", testCase.continueAfterFailure);
    NSLog("[Hook] Test Case Did Finish executionTimeAllowance: %d", testCase.executionTimeAllowance);
    NSLog("[Hook] Test Case Did Finish testCaseCount: %d", testCase.testCaseCount);
    NSLog("%@", "[Hook] Test Case Did Finish testRun: " + testCase.testRun.debugDescription);
  }
  
  public func testCase(_ testCase: XCTestCase, didRecord issue: XCTIssue) {
    NSLog("%@", "[Hook] Test Case info testcaseName: " + testCase.name);
    NSLog("%@", "[Hook] Test Case info testcasedesc: " + testCase.description);
    NSLog("[Hook] Test Case info testcase continue after fail: %d", testCase.continueAfterFailure);
    NSLog("[Hook] Test Case info executionTimeAllowance: %d",  testCase.executionTimeAllowance);
    NSLog("[Hook] Test Case info testCaseCount: %d", testCase.testCaseCount);
    NSLog("[Hook] Test Case info testRun: ", testCase.testRun.debugDescription);
    NSLog("%@", "[Hook] TestCase: XCTIssue: " + issue.compactDescription);
  }
  
  public func testSuiteDidFinish(_ testSuite: XCTestSuite) {
    NSLog("%@", "[Hook] Test Suite Did Finish: " + testSuite.debugDescription);
  }
  
  public func testSuite(_ testSuite: XCTestSuite, didRecord issue: XCTIssue) {
    NSLog("%@", "[Hook] Test Suite issue info: " + testSuite.debugDescription);
    NSLog("%@", "[Hook] TestSuite: XCTIssue: " + issue.compactDescription);
  }
  
  public func testSuite(_ testSuite: XCTestSuite, didFailWithDescription description: String, inFile filePath: String?, atLine lineNumber: Int) {
    NSLog("%@", "[Hook] Test Suite info: " + testSuite.debugDescription);
    NSLog("[Hook] Description of TestSuite Issue %d", description);
    NSLog("%@", "[Hook] Description of TestSuite file" + (filePath ?? "noFile"));
    NSLog("[Hook] Description of TestSuite lineNumber %d", lineNumber);
  }
}
