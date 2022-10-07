//
//  PresentationTiming.swift
//  PopOver
//
//  Created by Pavel Kochenda on 06/09/2019.
//  Copyright © 2019 IA. All rights reserved.
//

import UIKit

struct PresentationTiming {
    private let duration: Duration
    private let presentationCurve: UIView.AnimationCurve
    private let dismissCurve: UIView.AnimationCurve
    
    init(
        duration: Duration = .fast,
        presentationCurve: UIView.AnimationCurve = .linear,
        dismissCurve: UIView.AnimationCurve = .linear
    ) {
        self.duration = duration
        self.presentationCurve = presentationCurve
        self.dismissCurve = dismissCurve
    }
}
