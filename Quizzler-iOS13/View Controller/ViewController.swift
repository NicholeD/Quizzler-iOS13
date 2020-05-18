//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    
    var questions: [String] = ["one", "two", "three", "four"]
    var i = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        questionLabel.text = questions[0]
    }

    @IBAction func answerButtonPressed(_ sender: UIButton) {
     
        nextQuestion()
    }
    
    func nextQuestion() {
        i += 1
        if i < questions.count {
            questionLabel.text = questions[i]
        } else {
            done()
        }
    }
    
    func done() {
        questionLabel.text = "Done! Your score is:"
    }
    
    
}

