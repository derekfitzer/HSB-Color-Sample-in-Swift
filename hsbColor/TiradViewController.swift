//
//  TiradViewController.swift
//  hsbColor
//
//  Created by Derek Fitzer on 9/7/23.
//

import UIKit

class TiradViewController: UIViewController {
    
    var hueOffset: CGFloat = 0.3333333333333
    
    @IBOutlet weak var c1: UIView!
    
    @IBOutlet weak var c2: UIView!
    
    @IBOutlet weak var c3: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()

   
    }
    

    @IBAction func hueSlider(_ sender: UISlider) {
        let h = CGFloat(sender.value)
        let hd = h * 360.0
        let hplus = h + hueOffset
        let hminus = h + hueOffset + hueOffset
        let c1c = UIColor(hue: h, saturation: 1.0, brightness: 1.0, alpha: 1.0)
        c1.backgroundColor = c1c
        let c2c = UIColor(hue: hplus, saturation: 1.0, brightness: 1.0, alpha: 1.0)
        c2.backgroundColor = c2c
        let c3c = UIColor(hue: hminus, saturation: 1.0, brightness: 1.0, alpha: 1.0)
        c3.backgroundColor = c3c
        
        
    }
    

}
