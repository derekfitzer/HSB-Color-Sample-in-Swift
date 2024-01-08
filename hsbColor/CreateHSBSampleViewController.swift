//
//  CreateHSBSampleViewController.swift
//  hsbColor
//
//  Created by Derek Fitzer on 9/8/23.
//

import UIKit

class CreateHSBSampleViewController: UIViewController {
    
    var this: CGFloat = 0.5
    var that: CGFloat = 0.5
    var colorOne: UIColor!
    var colorTwo: UIColor!
    var colorThree: UIColor!
    var colorFour: UIColor!
    var colorFive: UIColor!
  
    
    @IBOutlet var colorSample: [UIView]!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        colorOne = UIColor(hue: this, saturation: 1.0, brightness: 1.0, alpha: 1.0)
        colorTwo = UIColor(hue: this, saturation: 1.0, brightness: 0.9, alpha: 1.0)
        colorThree = UIColor(hue: this, saturation: 1.0, brightness: 0.8, alpha: 1.0)
        colorFour = UIColor(hue: this, saturation: 1.0, brightness: 0.7, alpha: 1.0)
        colorFive = UIColor(hue: this, saturation: 1.0, brightness: 0.6, alpha: 1.0)
        
        colorSample[0].backgroundColor = colorOne
        colorSample[1].backgroundColor = colorTwo
        colorSample[2].backgroundColor = colorThree
        colorSample[3].backgroundColor = colorFour
        colorSample[4].backgroundColor = colorFive
        
    }
    


    @IBAction func slide(_ sender: UISlider) {
        this = CGFloat(sender.value)
        loadColor()
    }
    
    func loadColor(){
        colorOne = UIColor(hue: this, saturation: 1.0, brightness: 1.0, alpha: 1.0)
        colorTwo = UIColor(hue: this, saturation: 1.0, brightness: 0.9, alpha: 1.0)
        colorThree = UIColor(hue: this, saturation: 1.0, brightness: 0.8, alpha: 1.0)
        colorFour = UIColor(hue: this, saturation: 1.0, brightness: 0.7, alpha: 1.0)
        colorFive = UIColor(hue: this, saturation: 1.0, brightness: 0.6, alpha: 1.0)
        
        colorSample[0].backgroundColor = colorOne
        colorSample[1].backgroundColor = colorTwo
        colorSample[2].backgroundColor = colorThree
        colorSample[3].backgroundColor = colorFour
        colorSample[4].backgroundColor = colorFive
    }
    
    @IBAction func brightDark(_ sender: UISlider) {
    }
}
