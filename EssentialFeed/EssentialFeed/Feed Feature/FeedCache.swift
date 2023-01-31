//
//  FeedCache.swift
//  EssentialFeed
//
//  Created by Jason Kuan on 2023-01-31.
//

import Foundation

public protocol FeedCache {
    typealias Result = Swift.Result<Void, Error>
    
    func save(_ feed: [FeedImage], completion: @escaping (Result) -> Void)
}
