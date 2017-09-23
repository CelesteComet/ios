//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Bruce Wong on 9/14/17.
//  Copyright © 2017 Bruce Wong. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var eightBall: UIImageView!
    let ballImagesArr : [String] = ["ball1", "ball2", "ball3", "ball4", "ball5"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func askButton(_ sender: UIButton) {
        changeEightBall()
    }
    
    func changeEightBall() {
        let randomIndex : Int = Int(arc4random_uniform(5))
        
        eightBall.image = UIImage(named: ballImagesArr[randomIndex] )
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        changeEightBall()
    }


}

