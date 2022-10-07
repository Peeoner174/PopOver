//
//  PresentationTimingInformationProvider.swift
//  PopOver
//
//  Created by Pavel Kochenda on 06/09/2019.
//  Copyright © 2019 IA. All rights reserved.
//

protocol PresentationTimingInformationProvider: AnyObject {
    var presentationTiming: PresentationTiming { get set }
}
