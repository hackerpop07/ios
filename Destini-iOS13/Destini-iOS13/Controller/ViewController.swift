//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    @IBOutlet weak var scoreLabel: UILabel!
    
    var story = StoryBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateView()
    }
    @IBAction func onclickChoice(_ sender: UIButton) {
        story.setTotalChoice()

        story.checkChoice(choice: sender.currentTitle!)

        story.nextChoice()

        updateView()
    }
    
    func updateView() {
        storyLabel.text = story.getStoryTitle()
        choice1Button.setTitle(story.getChoice1(), for: .normal)
        choice2Button.setTitle(story.getChoice2(), for: .normal)
        scoreLabel.text = "Score: \(story.getScore())"
    }
}

