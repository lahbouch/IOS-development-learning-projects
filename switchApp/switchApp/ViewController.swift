//
//  ViewController.swift
//  switchApp
//
//  Created by admin on 30/5/2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet
    var redControl : UISwitch!
    @IBOutlet
    var greenControl : UISlider!
    @IBOutlet
    var BlueControl : UISwitch!
    @IBOutlet
    var resultView : UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction
    func onColorChange(){
        var redValue = redControl.isOn ? 255 : 0
        var greenValue = greenControl.value
        var blueValue = BlueControl.isOn ? 255 : 0
        
        var color = UIColor(red: CGFloat(redValue), green: CGFloat(greenValue), blue: CGFloat(blueValue), alpha: CGFloat(1))
        
        resultView.backgroundColor = color
        
    }


}

