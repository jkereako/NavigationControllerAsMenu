//
//  MenuController.swift
//  NavigationControllerAsMenu
//
//  Created by Jeff Kereakoglow on 2/12/16.
//  Copyright © 2016 Alexis Digital. All rights reserved.
//

import UIKit
import Foundation
class MenuController: UITableViewController {

  override func viewDidLoad() {
    super.viewDidLoad()

    performSegueWithIdentifier("loadHome", sender: self)
}
}
