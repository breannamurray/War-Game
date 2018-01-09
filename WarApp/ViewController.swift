//
//  ViewController.swift
//  WarApp
//
//  Created by Breanna Murray on 11/27/17.
//  Copyright © 2017 Breanna Murray. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var leftImageView: UIImageView!
    
    @IBOutlet weak var rightImageView: UIImageView!
    
    @IBOutlet weak var leftScoreLabel: UILabel!
    
    @IBOutlet weak var rightScoreLabel: UILabel!
    
    var leftScore = 0;
    var rightScore = 0;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func dealTapped(_ sender: Any) {
        
        //randomize two numbers
        let leftRandomNumber = arc4random_uniform(13) + 2
        let rightRandomNumber = arc4random_uniform(13) + 2
        
        //change image views
        leftImageView.image = UIImage(named: "card\(leftRandomNumber)")
        rightImageView.image = UIImage(named: "card\(rightRandomNumber)")
        
        //compare the numbers
        if leftRandomNumber > rightRandomNumber {
            //update the score
            leftScore += 1
            
            //update the label
            leftScoreLabel.text = String(leftScore)
        }
        else if rightRandomNumber > leftRandomNumber {
            //update the score
            rightScore += 1
            
            //update the label
            rightScoreLabel.text = String(rightScore)
        }
        else if leftRandomNumber == rightRandomNumber {
            
        }
        
    }
    
    
    


}

