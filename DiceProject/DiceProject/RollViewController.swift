//
//  RollViewController.swift
//  DiceProject
//
//  Created by admin on 1/6/2023.
//

import UIKit

class RollViewController: UIViewController {

    var firstValue : Int!
    var secondValue : Int!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        

        // Do any additional setup after loading the view.
    }
    
    func rollDice() -> Int{
        return Int.random(in: 1...6)
    }
    
    @IBAction
    func onRoleDice(){
        let controller = storyboard?.instantiateViewController(withIdentifier: "DiceViewController") as! DiceViewController
        
        controller.firstValue = rollDice()
        controller.secondValue = rollDice()
        
        
        
        present(controller, animated: true)
        
        
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
