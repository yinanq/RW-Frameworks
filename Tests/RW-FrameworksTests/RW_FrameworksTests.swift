import XCTest
@testable import RW_Frameworks

final class RW_FrameworksTests: XCTestCase {
    
    func testColorRedEqual() {
        let color = RW_Frameworks.colorFromHexString("FF0000")
        XCTAssertEqual(color, .red)
    }
    
    func testRWFColorsAreEqual() {
        let color = RW_Frameworks.colorFromHexString("006736")
        XCTAssertEqual(color, RW_Frameworks.rwfColor)
    }

    static var allTests = [
        ("testColorRedEqual", testColorRedEqual),
        ("testRWFColorsAreEqual", testRWFColorsAreEqual)
    ]
}
