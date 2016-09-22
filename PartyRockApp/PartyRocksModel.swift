//
//  PartyRocksModel.swift
//  PartyRockApp
//
//  Created by Vitaly Sacred on 22/09/16.
//  Copyright © 2016 Vitaly Sacred. All rights reserved.
//

import Foundation

class partyRock {
    private var _videoURL: String!
    private var _imageURL: String!
    private var _titleURL: String!
    
    var videoURL: String { return _videoURL }
    var imageURL: String { return _imageURL }
    var titleURL: String { return _titleURL }
    
    
    init(videoURL: String, imageURL: String, titleURL: String) {
        _videoURL = videoURL
        _imageURL = imageURL
        _titleURL = titleURL
    }
}
