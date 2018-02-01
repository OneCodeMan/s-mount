//
//  Move.swift
//  s-mount
//
//  Created by Dave Gumba on 2018-02-01.
//  Copyright © 2018 Dave's Organization. All rights reserved.
//

import Foundation

class Move {
    
    var moveName: String?
    var moveDescription: String?
    var moveAudioFile: String?
    
    init(moveName: String, moveDescription: String, moveAudioFile: String) {
        self.moveName = moveName
        self.moveDescription = moveDescription
        self.moveAudioFile = moveAudioFile
    }
}
