//
//  ViewController.swift
//  Alert
//
//  Created by Timothy D Batty on 2/4/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet private(set) var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction private func buttonTap() {
        let alert = UIAlertController(title: "Do the THING", message: "Let us know if you want us to do the thing", preferredStyle: .alert)
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel) { _ in
            print(">>>> Cancel")
        }
        let okAction = UIAlertAction(title: "Ok", style: .default) { _ in
            print(">>>> OK")
        }
        alert.addAction(cancelAction)
        alert.addAction(okAction)
        alert.preferredAction = okAction
        present(alert, animated: true)
    }
    
}

