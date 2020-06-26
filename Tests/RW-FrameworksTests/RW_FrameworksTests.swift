import XCTest
@testable import RW_Frameworks

final class RW_FrameworksTests: XCTestCase {
    
    func testColorRedEqual() {
        let color = RW_Frameworks.colorFromHexString("FF0000")
        XCTAssertEqual(color, .red)
    }

    static var allTests = [
        ("testColorRedEqual", testColorRedEqual)
    ]
}
