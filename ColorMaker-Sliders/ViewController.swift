//
//  ViewController.swift
//  ColorMaker-Sliders
//
//  Created by Jordan on 5/28/15.
//  Copyright (c) 2015 Jordany Abreu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var redControl: UISlider!
    @IBOutlet weak var greenControl: UISlider!
    @IBOutlet weak var blueControl: UISlider!

    @IBOutlet weak var colorView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        changeColorControl()
    }

    @IBAction func changeColorControl(){
        let r: Float = redControl.value
        let g: Float = greenControl.value
        let b: Float = blueControl.value
        
        let cgr: CGFloat = CGFloat(r)
        let cgg: CGFloat = CGFloat(g)
        let cgb: CGFloat = CGFloat(b)
        
        colorView.backgroundColor = UIColor(red: cgr, green: cgg, blue: cgb, alpha: 1)
    }
}

