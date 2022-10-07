//
//  DragIndicatorViewProvider.swift
//  PopOver
//
//  Created by Pavel Kochenda on 04.01.2021.
//  Copyright © 2021 IA. All rights reserved.
//

import UIKit

protocol PresentationDragIndicatorViewProvider {
    func addDragIndicatorView(to view: UIView)
    func updateDragIndicator(on progress: CGFloat)
}

