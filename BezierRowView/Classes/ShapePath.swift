//
//  ShapePath.swift
//  BezierRowView
//
//  Created by Dmitry Marinin on 28.06.2018.
//  Copyright © 2018 Dmitry Marinin. All rights reserved.
//

import Foundation

class ShapePath {
    var topLeft = 0
    var topRight = 0
    var bottomLeft = 0
    var bottomRight = 0
    
    init(_ topLeft: Int, _ topRight: Int, _ bottomLeft: Int, _ bottomRight: Int) {
        self.topLeft = topLeft
        self.topRight = topRight
        self.bottomLeft = bottomLeft
        self.bottomRight = bottomRight
    }
}
