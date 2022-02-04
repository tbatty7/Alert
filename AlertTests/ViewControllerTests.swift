@testable import Alert
import XCTest
import ViewControllerPresentationSpy

final class ViewControllerTests: XCTestCase {
    private var alertVerifier: AlertVerifier!
    
    override func setUp() {
        super.setUp()
        alertVerifier = AlertVerifier()
    }
    
    override func tearDown() {
        alertVerifier = nil
        super.tearDown()
    }
    
    func test_tappingButton_shouldShowAlert() throws {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let viewController: ViewController = storyboard.instantiateViewController(identifier: String(describing: ViewController.self))
        viewController.loadViewIfNeeded()
        
        tap(viewController.button)
        alertVerifier.verify(title: "Do the THING", message: "Let us know if you want us to do the thing", animated: true, actions: [.cancel("Cancel"), .default("Ok"),], preferredStyle: .alert, presentingViewController: viewController)
        XCTAssertEqual(alertVerifier.preferredAction?.title, "Ok", "preferred action")
    }
}
