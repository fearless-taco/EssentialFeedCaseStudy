import Foundation
import EssentialFeed

func uniqueFeedImage() -> FeedImage {
    FeedImage(id: UUID(), description: nil, location: nil, url: anyURL())
}

func uniqueImageFeed() -> (models: [FeedImage], local: [LocalFeedImage]) {
    let images = [uniqueFeedImage(), uniqueFeedImage()]
    let local = images.map {
        LocalFeedImage(id: $0.id, description: $0.description, location: $0.location, url: $0.url)
    }

    return (images, local)
}

extension Date {
    func minusCacheMaxAge() -> Date {
        adding(days: -7)
    }
    
    private var feedCacheMaxAgeInDays: Int {
        return 7
    }

    private func adding(days: Int) -> Date {
        Calendar(identifier: .gregorian).date(byAdding: .day, value: days, to: self)!
    }
}

extension Date {
    func adding(seconds: TimeInterval) -> Date {
        return self + seconds
    }
}
