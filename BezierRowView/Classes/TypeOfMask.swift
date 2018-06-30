//
//  TypeOfMask.swift
//  BezierRowView
//
//  Created by Dmitry Marinin on 28.06.2018.
//  Copyright © 2018 Dmitry Marinin. All rights reserved.
//

import Foundation

public enum typeOfMaskThreeShape: Int {
    var type: [ShapePath] {
        switch self {
        case .r300: return [ShapePath(0, 339, 0, 499), ShapePath(350, 796, 510, 536), ShapePath(810, 1000, 550, 1000)]
        case .r301: return [ShapePath(0, 398, 0, 98), ShapePath(410, 437, 110, 617), ShapePath(450, 1000, 630, 1000)]
        case .r302: return [ShapePath(0, 347, 0, 197), ShapePath(360, 560, 210, 560), ShapePath(570, 1000, 570, 1000)]
        case .r303: return [ShapePath(0, 167, 0, 307), ShapePath(180, 817, 320, 678), ShapePath(830, 1000, 690, 1000)]
        case .r304: return [ShapePath(0, 341, 0, 371), ShapePath(350, 983, 380, 373), ShapePath(1000, 1000, 390, 1000)]
        case .r305: return [ShapePath(0, 367, 0, 237), ShapePath(380, 737, 250, 607), ShapePath(750, 1000, 620, 1000)]
        case .r306: return [ShapePath(0, 250, 0, 380), ShapePath(260, 620, 390, 750), ShapePath(630, 1000, 760, 1000)]
        case .r307: return [ShapePath(0, 490, 0, 0), ShapePath(500, 500, 10, 990), ShapePath(510, 1000, 1000, 1000)]
        case .r308: return [ShapePath(0, 300, 0, 632), ShapePath(311, 895, 643, 672), ShapePath(906, 1000, 683, 1000)]
        case .r309: return [ShapePath(0, 160, 0, 350), ShapePath(800, 350, 620, 510), ShapePath(1000, 810, 1000, 550)]
        }
    }
    
    // MARK: - Cases
    
    case r300
    case r301
    case r302
    case r303
    case r304
    case r305
    case r306
    case r307
    case r308
    case r309
}

public enum typeOfMaskTwoShape: Int {
    var type: [ShapePath] {
        switch self {
        case .r200: return [ShapePath(0, 852, 0, 452), ShapePath(870, 1000, 470, 1000)]
        case .r201: return [ShapePath(0, 354, 0, 664), ShapePath(370, 1000, 680, 1000)]
        case .r202: return [ShapePath(0, 740, 0, 190), ShapePath(760, 1000, 210, 1000)]
        case .r203: return [ShapePath(0, 394, 0, 694), ShapePath(410, 1000, 710, 1000)]
        case .r204: return [ShapePath(0, 596, 0, 396), ShapePath(610, 1000, 410, 1000)]
        case .r205: return [ShapePath(0, 291, 0, 691), ShapePath(310, 1000, 710, 1000)]
        case .r206: return [ShapePath(0, 739, 0, 239), ShapePath(760, 1000, 260, 1000)]
        case .r207: return [ShapePath(0, 446, 0, 546), ShapePath(460, 1000, 560, 1000)]
        case .r208: return [ShapePath(0, 880, 0, 80), ShapePath(910, 1000, 110, 1000)]
        case .r209: return [ShapePath(0, 487, 0, 517), ShapePath(500, 1000, 530, 1000)]
        }
    }
    
    // MARK: - Cases
    
    case r200
    case r201
    case r202
    case r203
    case r204
    case r205
    case r206
    case r207
    case r208
    case r209
}
