//
//  AnimatorProtocol.swift
//  PopOver
//
//  Created by Pavel Kochenda on 07/10/2022.
//

import UIKit

protocol AnimatorProtocol: NSObject, UIViewControllerAnimatedTransitioning {
    associatedtype PresentationParamsProvider
}
