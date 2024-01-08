//
//  MonochromaticViewController.swift
//  hsbColor
//
//  Created by Derek Fitzer on 9/7/23.
//

import UIKit

class MonochromaticViewController: UIViewController {

    @IBOutlet weak var cs5: UIView!
    @IBOutlet weak var cs4: UIView!
    @IBOutlet weak var cs3: UIView!
    @IBOutlet weak var cs2: UIView!
    @IBOutlet weak var cs1: UIView!
    var c1: UIColor!
    var c2: UIColor!
    var c3: UIColor!
    var c4: UIColor!
    var c5: UIColor!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        c3 = selectedColor
        var tt: CGFloat = (74/360)
        print(tt)
        cs1.backgroundColor = UIColor(hue: tt, saturation: 0.48, brightness: 0.42, alpha: 1)
    }
    


    @IBAction func sliderStep(_ sender: UISlider) {
        
        var inc = CGFloat(sender.value)
        inc *= 0.75
        
        print(inc)
        
        cs5.backgroundColor = UIColor(hue: mh, saturation: ms + inc + inc, brightness: mb, alpha: ma)
        
        cs4.backgroundColor = UIColor(hue: mh, saturation: ms + inc, brightness: mb, alpha: ma)

        cs3.backgroundColor = UIColor(hue: mh, saturation: ms, brightness: mb, alpha: ma)

        cs2.backgroundColor = UIColor(hue: mh, saturation: ms - inc, brightness: mb, alpha: ma)

        cs1.backgroundColor = UIColor(hue: mh, saturation: ms - inc - inc, brightness: mb, alpha: ma)
        
    }
    
    func up(){
//        let hd = round(baseHue * 100) / 100
//        let sd = round(baseSaturation * 100) / 100
//        let bd = round(baseBrightness * 100) / 100
//        let ad = round(baseAlpha * 100) / 100
//        let t = "UIColor(hue: \(hd), saturation: \(sd), brightness: \(bd), alpha: \(ad)"
//        colorDef.text = t
    }
    
}
