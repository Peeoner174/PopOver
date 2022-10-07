//
//  BackgroundDesignable.swift
//  PopOver
//
//  Created by Pavel Kochenda on 07/10/2022.
//

import UIKit

protocol BackgroundDesignable: UIView {
    var style: BackgroundStyle { get }
    var didTap: ((_ recognizer: UIGestureRecognizer) -> Void)? { get set }
    func onPresent()
    func onDissmis()
    func updateIntensity(percent: CGFloat)
}

extension BackgroundDesignable {
    func updateIntensity(percent: CGFloat) {}
    func onPresent() {}
}
