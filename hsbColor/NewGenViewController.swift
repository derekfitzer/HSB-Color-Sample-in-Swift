//
//  NewGenViewController.swift
//  hsbColor
//
//  Created by Derek Fitzer on 9/7/23.
//

import UIKit

class NewGenViewController: UIViewController {

    var baseColor:[CGFloat] = [0.20555556, 0.48, 0.42]
    var offsets: [[CGFloat]] = [[0.038888889, -0.08, -0.21],[0.14444444,-0.36,0.68],[-0.11666667,-0.09,0.45],[0.127777778,-0.32,0.32]]
    var offsetsDarker: [[CGFloat]] = [[0,0,0.1], [0,0,0.2],[0,0,0.3]]
    var newColors: [UIColor] = []
    var currentOffset: [[CGFloat]]!
    
    @IBOutlet var colorSwatch: [UIView]!

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadColor()
    }
    
    func loadColor(){
        newColors.removeAll()
        for i in offsets {
            let nh = baseColor[0] + i[0]
            let ns = baseColor[1] + i[1]
            let nb = baseColor[2] + i[2]
            newColors.append(UIColor(hue: nh, saturation: ns, brightness: nb, alpha: 1.0))
        }
        colorSwatch[0].backgroundColor = UIColor(hue: baseColor[0], saturation: baseColor[1], brightness: baseColor[2], alpha: 1.0)
        colorSwatch[1].backgroundColor = newColors[0]
        colorSwatch[2].backgroundColor = newColors[1]
        colorSwatch[3].backgroundColor = newColors[2]
        
        }
    

    @IBAction func hueSlide(_ sender: UISlider) {
        let a = CGFloat(sender.value)
        baseColor[0] = a
        loadColor()
    }
    
}
