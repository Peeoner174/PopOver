//
//  PresentationAnimatorProvider.swift
//  PopOver
//
//  Created by Pavel Kochenda on 06/09/2019.
//  Copyright © 2019 IA. All rights reserved.
//

import UIKit

protocol PresentationAnimatorsProvider {
    var showAnimator: UIViewControllerAnimatedTransitioning { get }
    var dismissAnimator: UIViewControllerAnimatedTransitioning { get }
}
