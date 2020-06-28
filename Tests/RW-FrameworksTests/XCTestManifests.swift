import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(RwfColorTests.allTests),
        testCase(RwfNetworkingTests.allTests)
    ]
}
#endif
