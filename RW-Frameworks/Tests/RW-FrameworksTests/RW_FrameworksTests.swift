import XCTest
@testable import RW_Frameworks

final class RW_FrameworksTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(RW_Frameworks().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
