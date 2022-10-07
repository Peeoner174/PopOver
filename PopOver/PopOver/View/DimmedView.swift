//
//  DimmedView.swift
//  PopOver
//
//  Created by Pavel Kochenda on 07/10/2022.
//

import UIKit

class DimmedView: UIView {
    private let maxDimAlpha: CGFloat
    private let minDimAlpha: CGFloat
    
    init(maxDimAlpha: CGFloat = 0.8, minDimAlpha: CGFloat = 0.0) {
        self.maxDimAlpha = maxDimAlpha
        self.minDimAlpha = minDimAlpha
        super.init(frame: .zero)
        alpha = 0.0
        backgroundColor = .black
        addGestureRecognizer(tapGesture)
    }
    
    @available(*, unavailable)
    required public init?(coder aDecoder: NSCoder) {
        fatalError("don't use storyboards")
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

extension DimmedView: BackgroundDesignable {
    func onDissmis() {
        alpha = 0.0
    }
    
    var style: BackgroundStyle {
        .dimmed(maxAlpha: maxDimAlpha, minAlpha: minDimAlpha)
    }
    
    func updateIntensity(percent: CGFloat) {
        alpha = percent
    }
}

