//
//  ViewController.swift
//  iOSGitSample
//
//  Created by omaestra on 13/08/2019.
//  Copyright © 2019 omaestra. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var clockLabel: UILabel!
    
    var timer = Timer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(handleTimer), userInfo: nil, repeats: true)
    }

    @objc func handleTimer() {
        let formatter = DateFormatter()
        formatter.dateFormat = "mm:ss"
        clockLabel.text = formatter.string(from: Date())
    }

}

