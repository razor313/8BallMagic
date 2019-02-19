//
//  ViewController.swift
//  8MagicBall
//
//  Created by Reza Dehnavi on 2/19/19.
//  Copyright © 2019 Reza Dehnavi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // MARK: Properties
    @IBOutlet weak var ballImage: UIImageView!
    let balls = ["ball1","ball2","ball3","ball4","ball5"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        changeImage()
    }

    @IBAction func askQuestion(_ sender: Any) {
        changeImage()
    }
    
    // MARK: changeImage
    func changeImage () {
        let randomIndex = Int.random(in: 0...4)
        ballImage.image = UIImage.init(named: balls[randomIndex])
    }
    
    // MARk: changeImage by shake
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        changeImage()
    }
    
}

