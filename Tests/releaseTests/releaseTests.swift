import XCTest
@testable import release

final class releaseTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(release().text, "Hello, World!")
    }


    static var allTests = [
        ("testExample", testExample),
    ]
}
