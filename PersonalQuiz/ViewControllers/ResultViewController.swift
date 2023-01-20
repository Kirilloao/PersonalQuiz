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
    
    var answers: [Answer]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true
               sorted()
    }
    
    @IBAction func doneButtonPressed(_ sender: UIBarButtonItem) {
        navigationController?.dismiss(animated: true)
    }
    
    private func sorted() { //здесь функция выполняет 3 действия, не знаю как разделить
        
        var sortedAnswers = [String]()
        
        for answer in answers {
            if answer.type == .dog {
                sortedAnswers.append(String(answer.type.rawValue))
            } else if answer.type == .cat {
                sortedAnswers.append((String(answer.type.rawValue)))
            } else if answer.type == .rabbit {
                sortedAnswers.append((String(answer.type.rawValue)))
            } else if answer.type == .turtle {
                sortedAnswers.append((String(answer.type.rawValue)))
            }
            
        }
        var oneAnimal = [String]()
        var fewAnimal = [String]()
        
        for answer in sortedAnswers {
            if oneAnimal.contains(answer) {
                fewAnimal.append(answer)
            } else {
                oneAnimal.append(answer)
            }
        }
        
        if fewAnimal.isEmpty {
            emojiLabel.text = oneAnimal.randomElement()
        } else {
            emojiLabel.text = fewAnimal.randomElement()
        }
  
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


