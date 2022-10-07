//
//  PresentationFrameProvider.swift
//  PopOver
//
//  Created by Pavel Kochenda on 13.11.2020.
//  Copyright © 2020 IA. All rights reserved.
//

import UIKit

typealias FrameOfPresentedViewClosure = ((_ containerViewFrame: CGRect) throws -> CGRect)?

protocol PresentationFrameProvider {
    var frameOfPresentedViewClosure: FrameOfPresentedViewClosure { get set }
}
