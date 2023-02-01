//
//  EssentailAppUIAcceptanceTests.swift
//  EssentailAppUIAcceptanceTests
//
//  Created by Jason Kuan on 2023-02-01.
//

import XCTest

final class EssentailAppUIAcceptanceTests: XCTestCase {

    func test_onLaunch_displaysRemoteFeedWhenCustomerHasConnectivity() throws {
        let app = XCUIApplication()
        
        app.launch()

        XCTAssertEqual(app.cells.count, 22)
    }
}
