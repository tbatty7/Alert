//
//  TestHelpers.swift
//  AlertTests
//
//  Created by Timothy D Batty on 2/4/22.
//

import UIKit

func tap(_ button: UIButton) {
    button.sendActions(for: .touchUpInside)
}

func tap(_ button: UIBarButtonItem ) {
    _ = button.target?.perform(button.action, with: nil)
}
