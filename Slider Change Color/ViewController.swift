//
//  ViewController.swift
//  Slider Change Color
//
//  Created by Denis on 12.12.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var viewColor: UIView!
    
    @IBOutlet var redValue: UILabel!
    @IBOutlet var greenValue: UILabel!
    @IBOutlet var blueValue: UILabel!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        viewColor.layer.cornerRadius = 10
        changeColor()

    }
    
    func changeColor() {
        
        viewColor.backgroundColor = UIColor(red: CGFloat(redSlider.value), green:CGFloat (greenSlider.value), blue:CGFloat (blueSlider.value), alpha: 1)
        
        redValue.text = String(format: "%.2f", redSlider.value)
        greenValue.text = String(format: "%.2f", greenSlider.value)
        blueValue.text = String(format: "%.2f", blueSlider.value)
    }
    
    @IBAction func slidersMove() {
        changeColor()
    }
    
                                            
    

}

