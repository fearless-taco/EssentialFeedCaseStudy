//
//  CacheSpy.swift
//  EssentialAppTests
//
//  Created by Jason Kuan on 2023-01-31.
//

import EssentialFeed

class FeedCacheSpy: FeedCache {
    private(set) var messages = [Message]()
    
    enum Message: Equatable {
        case save([FeedImage])
    }
    
    func save(_ feed: [EssentialFeed.FeedImage], completion: @escaping (FeedCache.Result) -> Void) {
        messages.append(.save(feed))
        completion(.success(()))
    }
}
