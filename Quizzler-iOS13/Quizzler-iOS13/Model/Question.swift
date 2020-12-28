//
//  Question.swift
//  Quizzler-iOS13
//
//  Created by QuyVX on 24/12/2020.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

import Foundation

struct Question {
    var text: String
    var answer: String
    
    init(q: String, a:String) {
        text = q
        answer = a
    }
}
