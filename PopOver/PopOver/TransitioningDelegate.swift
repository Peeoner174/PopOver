//
//  TransitioningDelegate.swift
//  PopOver
//
//  Created by Pavel Kochenda on 07/10/2022.
//

import UIKit

protocol TransitioningDelegate: UIViewControllerTransitioningDelegate {
    func frameOfPresentedView(in containerViewFrame: CGRect) -> CGRect
    func didDismiss()
}
