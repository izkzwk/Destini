//
//  ViewController.swift
//  Destini
//
//  Created by Dzmitry Bladyka on 01.02.23.
//  Copyright © 2023 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    var storyBrain = StoryBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
    }
    
    func updateUI() {
        storyLabel.text = storyBrain.getStoryTitle()
        choice1Button.setTitle(storyBrain.getChoice1(), for: .normal)
        choice2Button.setTitle(storyBrain.getChoice2(), for: .normal)
    }
    
    @IBAction func selectionMade(_ sender: UIButton) {
        
        storyBrain.nextStory(userChoice: sender.currentTitle!)
        
        updateUI()
        
    }
    
}

