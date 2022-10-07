//
//  BackgroundStyle.swift
//  PopOver
//
//  Created by Pavel Kochenda on 06/09/2019.
//  Copyright © 2019 IA. All rights reserved.
//

import UIKit

enum BackgroundStyle {
    case dimmed(maxAlpha: CGFloat, minAlpha: CGFloat)
    case blurred(effectStyle: UIBlurEffect.Style, maxAlpha: CGFloat, minAlpha: CGFloat)
    case clear(shouldPassthrough: Bool)
}
