//
//  ContextMenuDismissalAnimator.swift
//  NavigationControllerAsMenu
//
//  Created by Jeffrey Kereakoglow on 3/1/16.
//  Copyright © 2016 Alexis Digital. All rights reserved.
//

import UIKit

class ContextMenuDismissalAnimator: NSObject {}

// MARK: - UIViewControllerAnimatedTransitioning
extension ContextMenuDismissalAnimator: UIViewControllerAnimatedTransitioning {
  func transitionDuration(transitionContext: UIViewControllerContextTransitioning?)
    -> NSTimeInterval {

      return 0.5
  }

  func animateTransition(transitionContext: UIViewControllerContextTransitioning) {
    let to = transitionContext.viewForKey(UITransitionContextToViewKey)
    let from = transitionContext.viewForKey(UITransitionContextFromViewKey)

    UIScreen.mainScreen().bounds.height
    let endFrame = CGRect(
      x: UIScreen.mainScreen().bounds.width,
      y: 0, //navigationBarHeight,
      width: UIScreen.mainScreen().bounds.width * 0.75,
      height: UIScreen.mainScreen().bounds.height
    )

    to?.userInteractionEnabled = true

    transitionContext.containerView()?.addSubview(to ?? UIView())
    transitionContext.containerView()?.addSubview(from ?? UIView())

    UIView.animateWithDuration(
      transitionDuration(transitionContext),
      animations: {
        to?.tintAdjustmentMode = .Automatic
        from?.frame = endFrame
      },
      completion: {(done: Bool) in
        transitionContext.completeTransition(done)
      }
    )
  }
}
