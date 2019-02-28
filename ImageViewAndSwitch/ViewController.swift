//
//  ViewController.swift
//  ImageViewAndSwitch
//
//  Created by yonekan on 2019/02/28.
//  Copyright © 2019 yonekan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var slider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        imageView.image = UIImage(named: "cat")
//        imageView.alpha = 0.3
        imageView.alpha = CGFloat(slider.value)
    }
    
    @IBAction func clickedSwitch(_ sender: UISwitch) {
        print("Switchが押されたよ")
        print(sender.isOn)
        
        if sender.isOn {
            // Switchがオンの場合
            imageView.image = UIImage(named: "dog")
        } else {
            // Switchがオフの場合
            imageView.image = UIImage(named: "cat")
        }
    }
    
    @IBAction func sliderDidChangedValue(_ sender: UISlider) {
        imageView.alpha = CGFloat(sender.value)
    }
}
