//
//  ViewController.swift
//  MarketingQuiz
//
//  Created by SATO_YASUTAKA on 2022/03/18.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var startButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        startButton.layer.borderWidth = 4
        startButton.layer.borderColor = UIColor.systemBlue.cgColor
    }

    override var shouldAutorotate: Bool {
        return false
    }
    
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        return .portrait
    }
}

