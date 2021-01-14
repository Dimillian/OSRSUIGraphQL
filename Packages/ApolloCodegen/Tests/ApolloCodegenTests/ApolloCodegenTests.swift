import XCTest
@testable import ApolloCodegen

final class ApolloCodegenTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(ApolloCodegen().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
