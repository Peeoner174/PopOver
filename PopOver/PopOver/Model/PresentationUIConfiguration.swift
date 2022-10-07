//
//  PresentationUIConfiguration.swift
//  PopOver
//
//  Created by Pavel Kochenda on 06/09/2019.
//  Copyright © 2019 IA. All rights reserved.
//

import UIKit
import Foundation

struct PresentationUIConfiguration {
    private let cornerRadius: CGFloat
    private let backgroundStyle: BackgroundStyle
    private let isTapBackgroundToDismissEnabled: Bool
    private let dismissWithParentViewController: Bool
    private let corners: [UIRectCorner]
    
    init(
        cornerRadius: CGFloat = 0.0,
        backgroundStyle: BackgroundStyle = .dimmed(maxAlpha: 0.8, minAlpha: 0.3),
        isTapBackgroundToDismissEnabled: Bool = true,
        corners: [UIRectCorner] = [.allCorners],
        dismissWithParentViewController: Bool = true
    ) {
        self.cornerRadius = cornerRadius
        self.backgroundStyle = backgroundStyle
        self.isTapBackgroundToDismissEnabled = isTapBackgroundToDismissEnabled
        self.corners = corners
        self.dismissWithParentViewController = dismissWithParentViewController
    }
}



