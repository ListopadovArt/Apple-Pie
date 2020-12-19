//
//  ViewController.swift
//  Apple Pie
//
//  Created by Artem Listopadov on 12/19/20.
//  Copyright © 2020 Artem Listopadov. All rights reserved.
//

import UIKit

var listOfWords = ["buccaneer","swift","glorious","incandescent","bug", "program"]
let incorrectMovesAllowed = 7
var totalWins = 0
var totalLosses = 0


class ViewController: UIViewController {
    @IBOutlet weak var treeImageView: UIImageView!
    @IBOutlet weak var correctWordLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet var letterButtons: [UIButton]!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        newRound()
    }
    
    var currentGame: Game!
    
    func newRound() {
        let newWord = listOfWords.removeFirst()
        currentGame = Game(word: newWord, incorrectMovesRemaining:
        incorrectMovesAllowed)
        updateUI()
    }
    func updateUI() {
        scoreLabel.text = "Wins:\(totalWins), Losses: \(totalLosses)"
        treeImageView.image = UIImage(named: "Tree \(currentGame.incorrectMovesRemaining)")
    }
    
    @IBAction func letterButtonPressed(_ sender: UIButton) {
        sender.isEnabled = false
    }
    
}

