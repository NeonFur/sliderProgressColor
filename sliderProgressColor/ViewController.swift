//
//  ViewController.swift
//  sliderProgressColor
//
//  Created by Dylan Beasley on 4/11/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var box: UIView!
    
    @IBOutlet weak var bottomPro: UIProgressView!
    @IBOutlet weak var midPro: UIProgressView!
    @IBOutlet weak var colorPick: UIColorWell!
    @IBOutlet weak var act: UIActivityIndicatorView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func sw(_ sender: UISwitch) {
        if sender.isOn {
            act.startAnimating()
        } else {
            act.stopAnimating()
        }
    }
    
    @IBAction func tapped(_ sender: UIButton) {
        if let color = colorPick.selectedColor {
            box.backgroundColor = color
        }
    }
    
    @IBAction func slide(_ sender: UISlider) {
        let v = sender.value
       // print(v)
        if v > 0.75 {
            bottomPro.progressTintColor = .red
        } else if v < 0.25 {
            bottomPro.progressTintColor = .green
        } else {
            bottomPro.progressTintColor = .blue
        }
        midPro.progressTintColor = UIColor(red: CGFloat(v), green: CGFloat(v), blue: 0, alpha: 1)
        
        bottomPro.progress = v
        midPro.progress = 1 - v
    }
}

