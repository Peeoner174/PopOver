//
//  BluredView.swift
//  PopOver
//
//  Created by Pavel Kochenda on 07/10/2022.
//

import UIKit

class BluredView: UIVisualEffectView {
    private let effectStyle: UIBlurEffect.Style
    private let maxAlpha: CGFloat
    private let minAlpha: CGFloat
    
    init(effectStyle: UIBlurEffect.Style, maxAlpha: CGFloat, minAlpha: CGFloat) {
        self.effectStyle = effectStyle
        self.maxAlpha = maxAlpha
        self.minAlpha = minAlpha
        super.init(effect: nil)
        addGestureRecognizer(tapGesture)
    }
    
    @available(*, unavailable)
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    var didTap: ((_ recognizer: UIGestureRecognizer) -> Void)?
    
    private lazy var tapGesture: UIGestureRecognizer = {
        return UITapGestureRecognizer(target: self, action: #selector(didTapView))
    }()
    
    // MARK: - Event Handlers
    
    @objc private func didTapView() {
        didTap?(tapGesture)
    }
}

extension BluredView: BackgroundDesignable {
    func onPresent() {
        self.effect = UIBlurEffect(style: self.effectStyle)
    }
    
    func onDissmis() {
        effect = nil
    }
    
    var style: BackgroundStyle {
        return .blurred(effectStyle: self.effectStyle, maxAlpha: self.maxAlpha, minAlpha: self.minAlpha)
    }
    
    func updateIntensity(percent: CGFloat) {
        alpha = percent
    }
}
