import XCTest
@testable import MyPopUp

final class MyPopUpTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(MyPopUp().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
