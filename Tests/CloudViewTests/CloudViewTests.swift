import XCTest
@testable import CloudView

final class CloudViewTests: XCTestCase {
    func testExample() {
        //check body
        if #available(iOS 13.0.0, *) {
            XCTAssertNotNil(CloudView().body)
        } else {
            // Fallback on earlier versions
        }
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
