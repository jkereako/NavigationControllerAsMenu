//
//  HomeController.swift
//  NavigationControllerAsMenu
//
//  Created by Jeffrey Kereakoglow on 3/1/16.
//  Copyright © 2016 Alexis Digital. All rights reserved.
//

import UIKit

class HomeController: UIViewController {

  override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    super.prepareForSegue(segue, sender: sender)

    guard let destination = segue.destinationViewController as? ContextMenuController else {
      return
    }

    destination.transitioningDelegate = self
    destination.modalPresentationStyle = .Custom
  }
}


extension HomeController: UIViewControllerTransitioningDelegate {
  func animationControllerForPresentedController(presented: UIViewController,
    presentingController presenting: UIViewController,
    sourceController source: UIViewController) -> UIViewControllerAnimatedTransitioning? {
      return ContextMenuPresentationAnimator()
  }

  func animationControllerForDismissedController(dismissed: UIViewController) -> UIViewControllerAnimatedTransitioning? {

    return ContextMenuDismissalAnimator()
  }
}
