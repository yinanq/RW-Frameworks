//
//  RwfNetworkingTests.swift
//  RW-FrameworksTests
//
//  Created by Yinan Qiu on 6/27/20.
//

import XCTest
@testable import RW_Frameworks

final class RwfNetworkingTests: XCTestCase {
    
    func testLoadDataCall() {
        let manager = RW_Frameworks.Networking.Manager()
        let expectation = XCTestExpectation(description: "Called for data")
        guard let url = URL(string: "https://raywenderlich.com") else {
            return XCTFail("Could not create URL")
        }
        manager.loadData(from: url) { result in
            expectation.fulfill()
            switch result {
            case .success(let returnedData):
                XCTAssertNotNil(returnedData, "Response data is nil")
            case .failure(let error):
                XCTFail(error?.localizedDescription ?? "error forming error result")
            }
        }
        wait(for: [expectation], timeout: 5)
    }
    
    static var allTests = [
        ("testLoadDataCall", testLoadDataCall)
    ]

}
