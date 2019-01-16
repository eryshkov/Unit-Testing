//
//  PlayData.swift
//  Unit Testing
//
//  Created by Evgeniy Ryshkov on 16/01/2019.
//  Copyright © 2019 Evgeniy Ryshkov. All rights reserved.
//

import Foundation

class PlayData {
    var allWords = [String]()
    var wordCounts = [String : Int]()
    
    init() {
        if let path = Bundle.main.path(forResource: "plays", ofType: "txt") {
            if let plays = try? String(contentsOfFile: path) {
                allWords = plays.components(separatedBy: CharacterSet.alphanumerics.inverted)
                allWords = allWords.filter {$0 != ""}
                
                for word in allWords {
                    if wordCounts[word] == nil {
                        wordCounts[word] = 1
                    }else{
                        wordCounts[word]! += 1
                    }
                }
                
                allWords = Array(wordCounts.keys)
            }
        }
    }
}
