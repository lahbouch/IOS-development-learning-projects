//
//  DiceViewController.swift
//  DiceProject
//
//  Created by admin on 1/6/2023.
//

import UIKit

class DiceViewController: UIViewController {

    var firstValue : Int!
    var secondValue : Int!
    
    @IBOutlet var firstDiceImage : UIImageView!
    @IBOutlet var secondDiceImage : UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        guard firstValue != nil else{
            firstDiceImage.image = nil
            secondDiceImage.image = nil
            return
        }
        
        firstDiceImage.image = UIImage(named: "d\(firstValue)")
        secondDiceImage.image = UIImage(named: "d\(firstValue)")
        
        
        // Do any additional setup after loading the view.
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
