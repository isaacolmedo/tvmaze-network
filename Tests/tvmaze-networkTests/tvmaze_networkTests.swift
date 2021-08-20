import XCTest
import RxSwift
@testable import tvmaze_network

final class tvmaze_networkTests: XCTestCase {
    
    var disposeBag: DisposeBag!
    
    override func setUp() {
        disposeBag = DisposeBag()
    }
    
    func test_show_shows() {
        let sut = ShowsAPI()
        let expectation = XCTestExpectation(description: "")
        
        sut.fetchShows().subscribe { shows in
            expectation.fulfill()
            //We only need if shows exists
            XCTAssert(true)
        } onError: { error in
            expectation.fulfill()
            XCTFail(error.localizedDescription)
        }.disposed(by: disposeBag)
        
        wait(for: [expectation], timeout: 10)
    }
    
}
