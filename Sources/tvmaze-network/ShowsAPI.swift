import RxSwift

public final class ShowsAPI {
    
    public init() { }
    
    private let provider = ShowsProvider()
    
    func fetchShows() -> Single<[Show]> { provider.request(.shows) }
}
