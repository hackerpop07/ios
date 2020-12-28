//
//  StoryBrain.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation


struct StoryBrain {
    let storyArray = [
                Story(
                title: "Your car has blown a tire on a winding road in the middle of nowhere with no cell phone reception. You decide to hitchhike. A rusty pickup truck rumbles to a stop next to you. A man with a wide brimmed hat with soulless eyes opens the passenger door for you and asks: 'Need a ride, boy?'.",
                    choice1: "I'll hop in. Thanks for the help!", choice1Destination: 1,
                    choice2: "Better ask him if he's a murderer first.", choice2Destination: 0
                ),
                Story(
                    title: "He nods slowly, unfazed by the question.",
                    choice1: "At least he's honest. I'll climb in.", choice1Destination: 0,
                    choice2: "Wait, I know how to change a tire.", choice2Destination: 1
                ),
                Story(
                    title: "As you begin to drive, the stranger starts talking about his relationship with his mother. He gets angrier and angrier by the minute. He asks you to open the glovebox. Inside you find a bloody knife, two severed fingers, and a cassette tape of Elton John. He reaches for the glove box.",
                    choice1: "I love Elton John! Hand him the cassette tape.", choice1Destination: 0,
                    choice2: "It's him or me! You take the knife and stab him.", choice2Destination: 1
                ),
                Story(
                    title: "What? Such a cop out! Did you know traffic accidents are the second leading cause of accidental death for most adult age groups?",
                    choice1: "The", choice1Destination: 0,
                    choice2: "End", choice2Destination: 1
                ),
                Story(
                    title: "As you smash through the guardrail and careen towards the jagged rocks below you reflect on the dubious wisdom of stabbing someone while they are driving a car you are in.",
                    choice1: "The", choice1Destination: 1,
                    choice2: "End", choice2Destination: 0
                ),
                Story(
                    title: "You bond with the murderer while crooning verses of 'Can you feel the love tonight'. He drops you off at the next town. Before you go he asks you if you know any good places to dump bodies. You reply: 'Try the pier.'",
                    choice1: "The", choice1Destination: 1,
                    choice2: "End", choice2Destination: 0
                )
    ]
    
    var storyNumber = 0
    var totalChoice = 0
    var scoreNumber = 0
    
    func getStoryTitle() -> String {
        return storyArray[storyNumber].title
    }
    
    func getChoice1() -> String {
        return storyArray[storyNumber].choice1
    }
    
    func getChoice2() -> String {
        return storyArray[storyNumber].choice2
    }
    
    func getScore() -> Int {
        return scoreNumber
    }
    
    mutating func setTotalChoice() {
        totalChoice = storyArray.count
    }
    
    mutating func checkChoice(choice: String) -> Bool {

        if storyArray[storyNumber].choice1Destination == 1 && choice == storyArray[storyNumber].choice1 {
            scoreNumber += 1
            return true
        }
        
        if storyArray[storyNumber].choice2Destination == 1 && choice == storyArray[storyNumber].choice2 {
            scoreNumber += 1
            return true
        }
        return false
    }
    
    mutating func nextChoice() {
        if storyNumber < totalChoice - 1 {
            storyNumber += 1
        } else {
            // ko fix được nỗi đếm điểm ở đoạn cuối
            storyNumber = 0
            scoreNumber = 0
        }
    }
}
