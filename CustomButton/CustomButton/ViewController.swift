//
//  ViewController.swift
//  CustomButton
//
//  Created by Joseph Cha on 2022/08/24.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var customButton: CustomButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        customButton.layer.cornerRadius = 12
        customButton.layer.borderWidth = 1.0
        customButton.layer.borderColor = UIColor.blue.cgColor
        customButton.backgroundColor = .blue
        
        customButton.label.textColor = .white
        
        customButton.imageView.backgroundColor = .white
        customButton.imageView.layer.cornerRadius = 10
    }
    
    @IBAction func tapCustomButton(_ sender: Any) {
        print("Tapped!")
    }
}
