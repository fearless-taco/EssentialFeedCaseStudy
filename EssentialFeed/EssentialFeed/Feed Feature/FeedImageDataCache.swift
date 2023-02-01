//
//  FeedImageDataCache.swift
//  EssentialFeed
//
//  Created by Jason Kuan on 2023-01-31.
//

import Foundation

public protocol FeedImageDataCache {
     typealias Result = Swift.Result<Void, Error>

     func save(_ data: Data, for url: URL, completion: @escaping (Result) -> Void)
 }
