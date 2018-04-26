//
//  ParserManager.swift
//  WordParser
//
//  Created by Illya Gordiyenko on 2018-04-25.
//  Copyright © 2018 Illya Gordiyenko. All rights reserved.
//

import Foundation

class ParserManager {
    
    let wordList:[String]!
    
    init(wordList: [String]) {
        self.wordList = wordList
    }
    
    convenience init() {
        self.init(wordList: [])
    }
    
    func parse(input:String) -> [String] {
        
        var tempStringsArray:[String] = []
        let longestWordLength = longestWord(dictionaryOfWord: wordList)
        
        for (index, _) in input.enumerated() {
            
            // Set the upper bound for the second loop to be the longest word in the dictionary or the end of the string count.
            var upperBound = index + 1 + longestWordLength
            if upperBound > input.count {
                upperBound = input.count
            }
            for j in index+1...upperBound {
                
                if dictionaryContains(value: input[index..<j], dictionaryOfWord: wordList) {
                    tempStringsArray.append(input[index..<j])
                }
            }
            
        }
        
        return tempStringsArray
    }
    
    func longestWord(dictionaryOfWord: [String]) -> Int {
        
        var wordLength = 0
        for word in dictionaryOfWord {
            if word.count > wordLength {
                wordLength = word.count
            }
        }
        
        return wordLength
    }
    
    func dictionaryContains(value: String, dictionaryOfWord: [String]) -> Bool {
        
        for item in dictionaryOfWord {
            if item == value {
                return true
            }
        }
        
        return false
    }
}
