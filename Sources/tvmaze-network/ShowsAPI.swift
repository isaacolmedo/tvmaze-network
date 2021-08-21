import RxSwift

public final class ShowsAPI {
    
    public init() { }
    
    private let provider = ShowsProvider()
    
    public func fetchShows() -> Single<[Show]> { provider.request(.shows) }
}
