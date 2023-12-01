//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var storyBrain = StoryBrain()
    
    @IBOutlet weak var storylabel: UILabel!
    
    @IBOutlet weak var choice1: UIButton!
    
    @IBOutlet weak var choice2: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        UpdateUI()
    }
    @IBAction func choiceMade(_ sender: UIButton) {
        storyBrain.nextStory(userChoice: sender.currentTitle!)
        UpdateUI()
    }
    func UpdateUI(){
        storylabel.text = storyBrain.getTitle()
        choice1.setTitle(storyBrain.getChoice1(), for : .normal)
                         choice2.setTitle(storyBrain.getChoice2(), for: .normal)
    }
    


}

