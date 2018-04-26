//
//  ViewController.swift
//  WordParser
//
//  Created by Illya Gordiyenko on 2018-04-25.
//  Copyright © 2018 Illya Gordiyenko. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var inputField: UITextField!
    @IBOutlet weak var outputLabel: UILabel!
    
    lazy var parseManager:ParserManager = {
        let wordList = ["apple", "pie", "shoe", "second", "secondary"]
        return ParserManager.init(wordList: wordList)
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }


    @IBAction func parseButton(_ sender: UIButton) {
    
        guard let fieldValue = inputField.text else { return }
        
        let splitString = parseManager.parse(input: fieldValue)
        
        var outputString = ""
        for word in splitString {
            outputString = "\(outputString) \(word)"
        }
        
        outputLabel.text = outputString
    }
    
}

