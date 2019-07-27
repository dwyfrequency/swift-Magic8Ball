//
//  ViewController.swift
//  Magic8Ball
//
//  Created by Jack Dwyer on 7/27/19.
//  Copyright © 2019 Jack Dwyer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let arr = ["ball1", "ball2","ball3","ball4", "ball5"]

    @IBOutlet weak var EightBallImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateImage()
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateImage()
    }
    
    @IBAction func shakeBtn(_ sender: Any) {
        updateImage()
    }
    
    func updateImage() -> Void {
        let randomNum = Int.random(in: 0 ... 4)
        EightBallImage.image = UIImage(named: arr[randomNum])
    }

}



