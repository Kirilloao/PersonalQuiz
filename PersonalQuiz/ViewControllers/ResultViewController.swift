//
//  ResultViewController.swift
//  PersonalQuiz
//
//  Created by Kirill Taraturin on 18.01.2023.
//

import UIKit

class ResultViewController: UIViewController {
    
    @IBOutlet var emojiLabel: UILabel!
    @IBOutlet var definitionLabel: UILabel!
    
    var answersFromQuestions: [Answer] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true
       sorted()
    }
    
    @IBAction func doneButtonPressed(_ sender: UIBarButtonItem) {
        navigationController?.dismiss(animated: true)
    }
    
    private func sorted() { //здесь функция выполняет 2 действия, не знаю как разделить
       
        var sortedAnswers = Set<String>()
        
        for answer in answersFromQuestions {
            if answer.type == .dog {
                sortedAnswers.insert(String(answer.type.rawValue))
            } else if answer.type == .cat {
                sortedAnswers.insert((String(answer.type.rawValue)))
            } else if answer.type == .rabbit {
                sortedAnswers.insert((String(answer.type.rawValue)))
            } else if answer.type == .turtle {
                sortedAnswers.insert((String(answer.type.rawValue)))
            }
            print(sortedAnswers)
        }
        
        emojiLabel.text = sortedAnswers.randomElement()
        
        if emojiLabel.text == String(AnimalType.cat.rawValue) {
            definitionLabel.text = AnimalType.cat.definition
        } else if emojiLabel.text == String(AnimalType.turtle.rawValue) {
            definitionLabel.text = AnimalType.turtle.definition
        } else if emojiLabel.text == String(AnimalType.rabbit.rawValue) {
            definitionLabel.text = AnimalType.rabbit.definition
        } else if emojiLabel.text == String(AnimalType.dog.rawValue) {
            definitionLabel.text = AnimalType.dog.definition
        }
       
    }
}
