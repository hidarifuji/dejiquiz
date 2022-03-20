//
//  selectLevelViewController.swift
//  MarketingQuiz
//
//  Created by SATO_YASUTAKA on 2022/03/19.
//

import UIKit

class selectLevelViewController: UIViewController {
    
    @IBOutlet var level1Button: UIButton!
    @IBOutlet var level2Button: UIButton!
    @IBOutlet var level3Button: UIButton!
    
    var selectTag = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        level1Button.layer.borderWidth = 4
        level1Button.layer.borderColor = UIColor.systemBlue.cgColor
        
        level2Button.layer.borderWidth = 4
        level2Button.layer.borderColor = UIColor.systemBlue.cgColor
        
        level3Button.layer.borderWidth = 4
        level3Button.layer.borderColor = UIColor.systemBlue.cgColor

        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let quizVC = segue.destination as! QuizViewController
        quizVC.selectLevel = selectTag
    }
    
    @IBAction func levelButtonAction(sender:UIButton){
        print(sender.tag)
        selectTag = sender.tag
        performSegue(withIdentifier: "toQuizVC", sender: nil)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
