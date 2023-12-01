//
//  StoryBrain.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation
struct StoryBrain{
    
    var storyNumber = 0
    
    let storyArray = [Story(title: "You saw a fork in road", choice1: "Take right",Choice2: "Take left",                           choice1Destination: 1, choice2Destination: 2),
                      Story(title: "You saw tiger", choice1: "Shout for help", Choice2: "Play dead", choice1Destination: 0, choice2Destination: 0),
                      Story(title: "You saw a treasure chest", choice1: "Open it", Choice2: "Check for traps", choice1Destination: 0, choice2Destination: 0)]
    func getTitle() -> String{
        return storyArray[storyNumber].title
    }
    func getChoice1() -> String{
        return storyArray[storyNumber].choice1
    }
    func getChoice2() -> String{
        return storyArray[storyNumber].Choice2
    }
    mutating func nextStory(userChoice:String){
        let currentStory = storyArray[storyNumber]
        if userChoice == currentStory.choice1{
            storyNumber = currentStory.choice1Destination
        }else if userChoice == currentStory.Choice2{
            storyNumber = currentStory.choice2Destination
        }
    }
    
}
