//
//  MenuController.swift
//  NavigationControllerAsMenu
//
//  Created by Jeff Kereakoglow on 2/12/16.
//  Copyright © 2016 Alexis Digital. All rights reserved.
//

import UIKit

class MenuController: UITableViewController {
  override func viewDidLoad() {
    super.viewDidLoad()

    // When this view loads, immediately perform the segue "loadHome".
    //
    // This segue IS NOT animated. It appears to the user as if the view Home is the root view
    // controller when, in fact, this view (the view Menu) is the root view controller.
    performSegueWithIdentifier("loadHome", sender: self)
  }

  //  override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
  //    segue.destinationViewController.transitioningDelegate = self
  //    segue.destinationViewController.modalPresentationStyle = .Custom
  //  }
}
