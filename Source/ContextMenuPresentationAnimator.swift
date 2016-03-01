//
//  MenuPresentationAnimator.swift
//  NavigationControllerAsMenu
//
//  Created by Jeffrey Kereakoglow on 2/29/16.
//  Copyright © 2016 Alexis Digital. All rights reserved.
//

import UIKit

class ContextMenuPresentationAnimator: NSObject {}

// MARK: - UIViewControllerAnimatedTransitioning
extension ContextMenuPresentationAnimator: UIViewControllerAnimatedTransitioning {
  func transitionDuration(transitionContext: UIViewControllerContextTransitioning?)
    -> NSTimeInterval {

      return 0.5
  }

  func animateTransition(transitionContext: UIViewControllerContextTransitioning) {
    let to = transitionContext.viewForKey(UITransitionContextToViewKey)
    let from = transitionContext.viewForKey(UITransitionContextFromViewKey)

    UIScreen.mainScreen().bounds.height
    let endFrame = CGRect(
      x: UIScreen.mainScreen().bounds.width * 0.25,
      y: 0,
      width: UIScreen.mainScreen().bounds.width * 0.75,
      height: UIScreen.mainScreen().bounds.height
    )

    from?.userInteractionEnabled = false

    transitionContext.containerView()?.addSubview(from ?? UIView())
    transitionContext.containerView()?.addSubview(to ?? UIView())

    var startFrame = endFrame
    startFrame.origin.x += UIScreen.mainScreen().bounds.width * 0.75

    to?.frame = startFrame

    UIView.animateWithDuration(
      transitionDuration(transitionContext),
      animations: {
        from?.tintAdjustmentMode = .Dimmed
        to?.frame = endFrame
      },
      completion: {(done: Bool) in
        transitionContext.completeTransition(done)
      }
    )
  }
}
