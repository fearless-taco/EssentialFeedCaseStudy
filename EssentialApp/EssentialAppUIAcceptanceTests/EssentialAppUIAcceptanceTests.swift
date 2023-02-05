//
//  EssentailAppUIAcceptanceTests.swift
//  EssentailAppUIAcceptanceTests
//
//  Created by Jason Kuan on 2023-02-01.
//

import XCTest

final class EssentialAppUIAcceptanceTests: XCTestCase {
  
  func test_onLaunch_displaysRemoteFeedWhenCustomerHasConnectivity() throws {
    let app = XCUIApplication()
    
    app.launch()
    
    let feedCells = app.cells.matching(identifier: "feed-image-cell")
    XCTAssertEqual(feedCells.count, 22)
  }
}
