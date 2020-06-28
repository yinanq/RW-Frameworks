import XCTest
@testable import RW_Frameworks

final class RwfColorTests: XCTestCase {
    
    func testColorRedEqual() {
        let color = RW_Frameworks.Color.fromHexString("FF0000")
        XCTAssertEqual(color, .red)
    }
    
    func testRWFColorsAreEqual() {
        let color = RW_Frameworks.Color.fromHexString("006736")
        XCTAssertEqual(color, RW_Frameworks.Color.rwfColor)
    }
    
    func testSecondaryRWFColorsAreEqual() {
        let color = RW_Frameworks.Color.fromHexString("147147")
        XCTAssertEqual(color, RW_Frameworks.Color.secondaryRWFColor)
    }

    static var allTests = [
        ("testColorRedEqual", testColorRedEqual),
        ("testRWFColorsAreEqual", testRWFColorsAreEqual),
        ("testSecondaryRWFColorsAreEqual", testSecondaryRWFColorsAreEqual)
    ]
}
