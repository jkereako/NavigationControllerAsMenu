//
//  HomeController.swift
//  NavigationControllerAsMenu
//
//  Created by Jeffrey Kereakoglow on 3/1/16.
//  Copyright © 2016 Alexis Digital. All rights reserved.
//

import UIKit

class ContextMenuController: UITableViewController {}

extension ContextMenuController {
  @IBAction func dismissAction(sender: UIButton) {
    dismissViewControllerAnimated(true, completion: nil)
  }
}