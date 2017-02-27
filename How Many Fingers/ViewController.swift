//
//  ViewController.swift
//  How Many Fingers
//
//  Created by Wendell Adriel on 27/02/2017.
//  Copyright © 2017 CodeShare. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var userInput: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func guessNumber(_ sender: Any) {
        let random = String(arc4random_uniform(6))
        
        if random == userInput.text {
            resultLabel.text = "You're right"
            resultLabel.textColor = UIColor.green
        } else {
            resultLabel.text = "Too bad... it was \(random)"
            resultLabel.textColor = UIColor.red
        }
    }
}

