//
// Created by Dmitry Marinin on 29.06.2018.
// Copyright (c) 2018 Dmitry Marinin. All rights reserved.
//

public class PhotoModel {
    var handle: String!
    var originalName: String!
    var url: String!
    var id: Int?
    var width: Int?
    var height: Int?
    var isPortrait: Bool!

    public init(handle: String, originalName: String, url: String,
                id: Int?, width: Int?, height: Int?, isPortrait: Bool) {
        self.handle = handle
        self.originalName = originalName
        self.url = url
        self.id = id
        self.width = width
        self.height = height
        self.isPortrait = isPortrait

    }


    public func clear() {
        originalName = nil
        url = nil
        id = nil
        handle = nil
        width = nil
        height = nil
        isPortrait = nil
    }
}
