//
//  PassthroughView.swift
//  PopOver
//
//  Created by Pavel Kochenda on 07/10/2022.
//

import UIKit

class PassthroughBackgroundView: UIView {
    private let passthroughViews: [UIView]
    private let shouldPassthrough: Bool
    
    init(shouldPassthrough: Bool, presentingVC: UIViewController) {
        self.shouldPassthrough = shouldPassthrough
        self.passthroughViews = presentingVC.view.subviews
        super.init(frame: .zero)
        if !shouldPassthrough {
            addGestureRecognizer(tapGesture)
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func getNavigationBar(fromViewsStack viewsStack: [UIView]) -> UINavigationBar? {
        viewsStack.filter {$0.isKind(of: UINavigationBar.classForCoder()) }.first as? UINavigationBar
    }
    
    override func hitTest(_ point: CGPoint, with event: UIEvent?) -> UIView? {
        var view = super.hitTest(point, with: event)
        
        guard shouldPassthrough else { return view }
        
        if let navigationBar = self.getNavigationBar(fromViewsStack: passthroughViews),
           navigationBar.bounds.contains(convert(point, to: navigationBar)) {
            view = navigationBar.hitTest(convert(point, to: navigationBar), with: event)
        } else if view == self {
            for passthroughView in passthroughViews {
                view = passthroughView.hitTest(convert(point, to: passthroughView), with: event)
                if view != nil {
                    break
                }
            }
        }
        
        return view
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

extension PassthroughBackgroundView: BackgroundDesignable {
    func onDissmis() {}
    
    var style: BackgroundStyle {
        .clear(shouldPassthrough: shouldPassthrough)
    }
}




