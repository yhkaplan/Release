import XCTest

import releaseTests

var tests = [XCTestCaseEntry]()
tests += releaseTests.allTests()
XCTMain(tests)