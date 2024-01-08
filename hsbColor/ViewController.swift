//
//  ViewController.swift
//  hsbColor
//
//  Created by Derek Fitzer on 9/6/23.
//

import UIKit

var selectedColor: UIColor!
var mh: CGFloat!
var ms: CGFloat!
var mb: CGFloat!
var ma: CGFloat!


class ViewController: UIViewController {
    
    @IBOutlet weak var colorDeg: UILabel!
    @IBOutlet weak var alp: UISlider!
    @IBOutlet weak var colorDef: UILabel!
    @IBOutlet weak var baseColor: UIView!
    @IBOutlet weak var bri: UISlider!
    @IBOutlet weak var sat: UISlider!
    @IBOutlet weak var hue: UISlider!
    var colors: [UIColor] = []
    var baseHue: CGFloat = 180.0
    var baseSaturation: CGFloat = 1.0
    var baseBrightness: CGFloat = 1.0
    var baseAlpha: CGFloat = 1.0
    
    var offset: CGFloat = 0.5

    @IBOutlet weak var textArea: UITextField!
    @IBOutlet var colorPanels: [UIView]!
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func create(_ sender: UIButton) {
        create()
    }
    
    @IBAction func darker(_ sender: UIButton) {
        genDarker()
    }
    
    @IBAction func lighter(_ sender: Any) {
        colors.removeAll()
        offset = 0.5
        for _ in 0...4 {
            let nc = UIColor(hue: baseHue, saturation: baseSaturation, brightness: offset, alpha: baseAlpha)
            colors.append(nc)
            offset += 0.1
            
        }
        create()
    }
    
    func genDarker(){
        colors.removeAll()
        offset = 0.5
        for _ in 0...4 {
            let nc = UIColor(hue: baseHue, saturation: baseSaturation, brightness: offset, alpha: baseAlpha)
            colors.append(nc)
            offset -= 0.1
            
        }
        create()
    }
    
    func create(){
        for i in 0...4{
            colorPanels[i].backgroundColor = colors[i]
        }
    }
    
    @IBAction func hue(_ sender: UISlider) {
        let h = CGFloat(sender.value)
        print(h)
        let sc = UIColor(hue: h, saturation: 1, brightness: 1, alpha: 1)
        hue.thumbTintColor = sc
        baseHue = h
      //  create()
        changeBaseSwatch()
        cDef()
    }
    
    @IBAction func sat(_ sender: UISlider) {
        let s = CGFloat(sender.value)
        baseSaturation = s
        changeBaseSwatch()
        cDef()
        
    }
    
    
    @IBAction func alp(_ sender: UISlider) {
        let a = CGFloat(sender.value)
        baseAlpha = a
        changeBaseSwatch()
        cDef()
        
    }
    
    @IBAction func bri(_ sender: UISlider) {
        let b = CGFloat(sender.value)
        baseBrightness = b
        changeBaseSwatch()
        cDef()
    }
    
    func changeBaseSwatch(){
        let cbs = UIColor(hue: baseHue, saturation: baseSaturation, brightness: baseBrightness, alpha: baseAlpha)
        baseColor.backgroundColor = cbs
        selectedColor = cbs
        mh = baseHue
        ms = baseSaturation
        mb = baseBrightness
        ma = baseAlpha
        
    }
    
    func cDef(){
        //let roundedValue = round(value * 100) / 100.0
        let hd = round(baseHue * 100) / 100
        let sd = round(baseSaturation * 100) / 100
        let bd = round(baseBrightness * 100) / 100
        let ad = round(baseAlpha * 100) / 100
        let t = "UIColor(hue: \(hd), saturation: \(sd), brightness: \(bd), alpha: \(ad)"
        colorDef.text = t
        let hueDeg = baseHue * 360
        let de = round(hueDeg * 1) / 1
        colorDeg.text = "Hue: \(de)°"
        
    }
    
    
}

