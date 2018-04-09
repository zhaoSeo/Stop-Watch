//
//  ViewController.swift
//  Stop Watch
//
//  Created by amadeus on 2018. 4. 9..
//  Copyright © 2018년 DIT Apps. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var timer = Timer()
    var count = 0
    @IBOutlet weak var timeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        timer = Timer.scheduledTimer(withTimeInterval: 1/100, repeats: true, block: { (timer) in
            self.update()
        })
    }
    
    func update() {
        count = count + 1
        let min = count / 60 / 100
        let sec = (count - (min * 60 * 100)) / 100
        let msec = count - (min * 60 * 100) - (sec * 100)
        timeLabel.text = String(format: "%02d:%02d:%02d", min, sec, msec)
    }

}

